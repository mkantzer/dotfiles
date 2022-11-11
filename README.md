# dotfiles

# STILL A WIP.

Configuring all my nonsense with [Nix](https://nixos.org). Attempting to keep it buck wild simple, but we'll see how that goes.

The repo configures the following hosts:

- devVM: a theoretical nixOS vm, that would ideally take inspiration from [mitchellh's setup](https://github.com/mitchellh/nixos-config)
- homePi: Raspberry Pi 4, hosting various home automation appliances. 
- mikeBox: a theoretical nixOS install on my main desktop computer
- mikeBook: my personal intel macOS laptop
- workBook: work-provided m1 macOS laptop

## Usage

Build your desired host with `nixos-rebuild --flake` (or `darwin-rebuild` on macOS). Example:

```console
# nixos-rebuild switch --flake ".#mikeBook"
```
Anything that couldn't be configured through purely nix-native systems lives in `./non-nix`, which is poorly named because it still tries to be as nixy as possible. This primarily is for various macOS applications and their settings.

### Packages

Some packages not in nixpkgs are defined in `:/pkgs/`. These can be built and run as flake outputs. Example:
 
## Inspirations

- [Misterio77/nixos-config](https://github.com/Misterio77/nix-config): General layout, and primary source!
- [malob/nixpkgs](https://github.com/malob/nixpkgs): random neat tricks and fun ideas. Probably also the security.pam for macOS
- [samhh/dotfiles](https://github.com/samhh/dotfiles): a nice simple mixed-os setup. Hoping to steal some ideas, and the home-automation installation parts. Also, age and git-crypt for secrets management.



## How to bootstrap

All you need is nix (any version). Run:
```
nix-shell
```

If you already have nix 2.4+, git, and have already enabled `flakes` and
`nix-command`, you can also use the non-legacy command:
```
nix develop
```

`nixos-rebuild build --flake .` To build nixos system configurations
`darwin-rebuild build --flake .` To build darwin system configurations

`home-manager build --flake .` To build user configurations

`nix build` (or shell or run) To build and use packages

`sops` To manage secrets

