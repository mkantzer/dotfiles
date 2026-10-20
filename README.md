# dotfiles

Configuring all my nonsense with [Nix](https://nixos.org): [nix-darwin](https://github.com/nix-darwin/nix-darwin) for macOS, NixOS for Linux boxes, and [home-manager](https://github.com/nix-community/home-manager) for user config on both.

## Hosts

| Host       | Platform                     | Notes                               |
|------------|------------------------------|-------------------------------------|
| `mikeBook` | nix-darwin, `aarch64-darwin` | Personal laptop                     |
| `workBook` | nix-darwin, `aarch64-darwin` | Work laptop; adds the work features |

## Everyday commands

```console
darwin-rebuild build --flake ~/.config/dotfiles          # macOS: build only
sudo darwin-rebuild switch --flake ~/.config/dotfiles    # macOS: build and activate
sudo nixos-rebuild switch --flake ~/.config/dotfiles     # NixOS
nix flake update --flake ~/.config/dotfiles              # update inputs
nix fmt                                                  # format (nixfmt)
```

`--flake <path>` picks the configuration whose name matches the machine's hostname. Use `--flake <path>#<host>` when it doesn't match yet (first install). The fish aliases `drb`, `drs`, `nrb`, `nrs` and `flakeup` wrap these.

## Layout

```
flake.nix                one line per host: mkDarwin / mkNixos
hosts/<host>/            what this machine is: feature switches, stateVersions, one-offs
modules/
  shared/                always on, macOS and NixOS: nix settings, fish, the user + home-manager wiring
  darwin/                always on, macOS: system defaults; also darwin-only features (homebrew)
  nixos/                 always on, NixOS: locale, user account, base packages
  features/              opt-in, macOS and NixOS: one file per `my.<name>.enable`
  home/                  always on: core home-manager config (shell, git, ssh, nvim, CLI tools)
```

### How a host is assembled

```
flake.nix  mkDarwin "workBook"
  ├─ modules/darwin            (always)
  │    ├─ modules/shared       (always)
  │    │    └─ user.nix ──► home-manager.users.<my.user.name> imports modules/home
  │    ├─ modules/features     (declares every my.<name>.enable; all default to off)
  │    └─ homebrew.nix         (declares my.homebrew.enable)
  └─ hosts/workBook            (sets my.* = true for what it wants)
```

`mkNixos` is the same, with `modules/nixos` in place of `modules/darwin`.

Everything in `modules/` is imported on every host. Importing a feature file only *declares* its option; nothing happens until a host sets it to `true`.

## Features

### Switching features on and off

In the host file:

```nix
# hosts/workBook/default.nix
{
  my = {
    user.homeStateVersion = "25.11";

    homebrew.enable = true;
    kitty.enable = true;
    aws.enable = true;
  };
}
```

To switch a feature off, delete its line or set it to `false`. Then rebuild.

### Available features

| Option               | Platforms | What it does                                                                                                                       |
|----------------------|-----------|------------------------------------------------------------------------------------------------------------------------------------|
| `my.arduino.enable`  | both      | Arduino / microcontroller CLIs (arduino-cli, tinygo, esptool, …)                                                                   |
| `my.aws.enable`      | both      | `awscli` with the 1Password-backed `personal-admin` profile, `aws-p` alias                                                         |
| `my.firefox.enable`  | both      | Firefox, managed by home-manager                                                                                                   |
| `my.fonts.enable`    | both      | System-wide fonts (Fira Code Nerd Font, JetBrains Mono, emoji, …)                                                                  |
| `my.homebrew.enable` | macOS     | Homebrew via nix-homebrew, with the cask and brew lists                                                                            |
| `my.k8s.enable`      | both      | helmfile and the `kcy` / `kce` fish helpers                                                                                        |
| `my.kitty.enable`    | both      | kitty terminal and its config                                                                                                      |
| `my.openscad.enable` | both      | OpenSCAD                                                                                                                           |
| `my.workCli.enable`  | both      | Argo CLIs, gcloud with GKE auth + Cloud SQL proxy, terragrunt, pandoc; LeagueApps `GOPRIVATE`, git SSH rewrite and the `tcs` alias |

Settings that aren't features:

| Option                     | Default         | Notes                                                              |
|----------------------------|-----------------|--------------------------------------------------------------------|
| `my.user.name`             | `"mk5r"`        | Primary user. Gets the home-manager config.                        |
| `my.user.homeStateVersion` | none (required) | home-manager release at first install. Never change it afterwards. |

Keep this table up to date when adding features.

### Checking what a host has switched on

```console
nix eval .#darwinConfigurations.workBook.config.my.kitty.enable
nix eval .#darwinConfigurations.workBook.config.my --json
nix eval .#darwinConfigurations.workBook.config.home-manager.users.mk5r.programs.kitty.enable
```

For poking around interactively: `nix repl`, then `:lf .` and `darwinConfigurations.workBook.config.my`.

## Where does new config go?

| The setting is…                                            | Put it in                                                                                |
|------------------------------------------------------------|------------------------------------------------------------------------------------------|
| wanted on every machine, user-level (shell, git, CLI tool) | `modules/home/`                                                                          |
| wanted on every machine, system-level                      | `modules/shared/` (or `darwin/` / `nixos/` if platform-specific)                         |
| wanted on some machines                                    | a new feature in `modules/features/` (darwin-only: `modules/darwin/`)                    |
| needed by one machine, and small                           | directly in `hosts/<host>/default.nix` (e.g. mikeBook's `homebrew.casks = [ "steam" ];`) |

Host files can set *any* nix-darwin / NixOS option directly, not only `my.*`. Lists such as `homebrew.casks` and `home.packages` are merged with what the modules set rather than replacing it.

## Adding a feature

1. Create `modules/features/<name>.nix`:

   ```nix
   {
     config,
     lib,
     pkgs,
     ...
   }:
   {
     options.my.<name>.enable = lib.mkEnableOption "<one-line description>";

     config = lib.mkIf config.my.<name>.enable {
       # System-level settings go here directly, e.g.
       # environment.systemPackages = [ pkgs.foo ];

       # home-manager settings go under the user:
       home-manager.users.${config.my.user.name} = {
         home.packages = [ pkgs.foo ];
         programs.bar.enable = true;
       };
     };
   }
   ```

2. Add `./<name>.nix` to `modules/features/default.nix`.
3. Run `git add` on the new file. Flakes only see files git knows about; otherwise evaluation fails with "is not tracked by Git".
4. Switch it on in a host: `my.<name>.enable = true;`.
5. Add a row to the [features table](#available-features).

Notes:
- `lib.mkEnableOption` creates a boolean option defaulting to `false`.
- Inside `home-manager.users.${...} = { ... }`, options are **home-manager** options (`home.packages`, `programs.*` from the [home-manager option search](https://home-manager-options.extranix.com/)). Outside it, they are **nix-darwin / NixOS** options.
- If the home-manager part needs home-manager's own `config` (e.g. `config.home.homeDirectory`), write it as a function:
  `home-manager.users.${config.my.user.name} = { config, ... }: { ... };`. Inside, `config` then means home-manager's config.
- **Darwin-only features** (anything that sets `homebrew.*`, `system.defaults.*`, …) go in `modules/darwin/` and are imported from `modules/darwin/default.nix`. Those options don't exist on NixOS, so evaluating them there fails even when the feature is off. NixOS-only features go in `modules/nixos/` for the same reason.

## Adding options beyond `enable`

A feature can take settings. Declare them next to `enable` and read them with `config.my.<name>.<option>`:

```nix
{
  config,
  lib,
  pkgs,
  ...
}:
let
  cfg = config.my.fonts;
in
{
  options.my.fonts = {
    enable = lib.mkEnableOption "system-wide fonts";

    extraPackages = lib.mkOption {
      type = lib.types.listOf lib.types.package;
      default = [ ];
      description = "Fonts to install on top of the defaults.";
    };

    size = lib.mkOption {
      type = lib.types.int;
      default = 13;
    };
  };

  config = lib.mkIf cfg.enable {
    fonts.packages = [ pkgs.fira-code ] ++ cfg.extraPackages;
  };
}
```

A host then sets `my.fonts.extraPackages = [ pkgs.inter ];`.

Common types (`lib.types.*`):

| Type                      | Example value                                               |
|---------------------------|-------------------------------------------------------------|
| `bool`                    | `true`                                                      |
| `str`                     | `"Nordfox"`                                                 |
| `int`                     | `13`                                                        |
| `enum [ "dark" "light" ]` | `"dark"`                                                    |
| `listOf str`              | `[ "a" "b" ]` (lists from several modules are concatenated) |
| `attrsOf str`             | `{ foo = "bar"; }`                                          |
| `package`                 | `pkgs.fish`                                                 |
| `nullOr str`              | `null` or `"x"`                                             |

Defaults and overrides:
- `default = …;` in `mkOption` is used when nobody sets the option.
- Without a `default`, every host *must* set it, or evaluation fails with "option … was accessed but has no value defined". `my.user.homeStateVersion` works this way on purpose.
- If two modules set the same non-list option to different values, evaluation fails with a conflict. Mark the less important one `lib.mkDefault value` (overridable), or the winner `lib.mkForce value`.

One rule to remember: **`imports` can't depend on `config`.** Don't write `imports = lib.optional config.my.foo.enable ./foo.nix;`, because that causes infinite recursion. Always import the file and use `lib.mkIf` inside it, as the features do.

## Adding a host

1. Create `hosts/<host>/default.nix`. Copy an existing host and adjust the `my.*` switches.
2. Set `system.stateVersion` and `my.user.homeStateVersion` to the current releases. Never change them afterwards.
3. Add a line to `flake.nix`: `<host> = mkDarwin "<host>" "aarch64-darwin";` or `<host> = mkNixos "<host>" "x86_64-linux";`. The name must match the machine's hostname, which the flake sets for you.
4. `git add` the new files.

### NixOS hosts

```nix
# hosts/<host>/default.nix
{
  imports = [ ./hardware-configuration.nix ]; # copied from /etc/nixos/ after installing

  my.user.homeStateVersion = "26.05";

  system.stateVersion = "26.05";
}
```

`modules/nixos` already creates the `my.user.name` account (normal user, `wheel`, fish shell). Set its password with `passwd` as root, or add `users.users.mk5r.hashedPassword` / SSH keys in the host. On the machine, run `sudo nixos-rebuild switch --flake .#<host>`. Inside a fresh installer without flakes enabled, run `nix-shell` in the repo first.

## Bootstrap (macOS)

```bash
# Install Nix (multi-user)
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install)

# Clone via unauthenticated https; 1Password-backed SSH isn't set up yet
mkdir -p ~/.config && cd ~/.config
git clone https://github.com/mkantzer/dotfiles.git
cd dotfiles

# First nix-darwin activation; with my.homebrew.enable this also installs Homebrew.
# If it aborts about existing files in /etc, rename them to *.before-nix-darwin and re-run.
sudo nix --extra-experimental-features 'nix-command flakes' \
  run nix-darwin/master#darwin-rebuild -- switch --flake .#<host>

# nix-darwin does not change the login shell of an existing user
chsh -s /run/current-system/sw/bin/fish
```

Afterwards, `darwin-rebuild` is on `PATH` and the hostname matches, so the commands under [Everyday commands](#everyday-commands) work.

Then set up 1Password, which the SSH agent, git commit signing and AWS credential helper depend on:
1. Open 1Password and sign in.
2. General → `Keep 1Password in the menu bar`, `Start at login`.
3. Security → `Unlock using Apple Watch`.
4. Developer → `Use the SSH agent`, `Display key names when authorizing connections`, `Integrate with 1Password CLI`.
5. A reboot may be needed before the SSH agent is picked up.

## Troubleshooting

| Error                                              | Usual cause                                                                                                         |
|----------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| `Path '…' … is not tracked by Git`                 | New file not `git add`ed.                                                                                           |
| `The option 'my.foo' does not exist`               | Typo; feature file missing from its `default.nix`; or a darwin-only feature (`my.homebrew`) set on a NixOS host.    |
| `option … was accessed but has no value defined`   | A required option, usually `my.user.homeStateVersion`, isn't set in the host.                                       |
| `The option '…' has conflicting definition values` | Two modules set the same value differently; use `lib.mkDefault` / `lib.mkForce`.                                    |
| `infinite recursion encountered`                   | Something in `imports` (or an `if` around a whole module) reads `config`. Use `lib.mkIf` inside the module instead. |

Add `--show-trace` to any `nix` / `darwin-rebuild` command to see which file caused an error.

## Inspirations

- [Misterio77/nix-config](https://github.com/Misterio77/nix-config): general layout.
- [malob/nixpkgs](https://github.com/malob/nixpkgs): nix-darwin and Homebrew tricks.
- [samhh/dotfiles](https://github.com/samhh/dotfiles): a simple mixed-OS setup.
