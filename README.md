# dotfiles

Configuring all my nonsense with [Nix](https://nixos.org). Attempting to keep it simple, but we'll see how that goes.

The repo configures the following hosts:

<!-- - devVM: a theoretical nixOS vm, that would ideally take inspiration from [mitchellh's setup](https://github.com/mitchellh/nixos-config) -->
- homePi: Raspberry Pi 4, hosting various home automation appliances. 
- mikeBox: a theoretical nixOS install on my main desktop computer
- mikeBook: my personal intel macOS laptop
- workBook: work-provided m1 macOS laptop

## Usage

Build your desired host with `nixos-rebuild --flake` (or `darwin-rebuild` on macOS). Example:

```console
# nixos-rebuild switch --flake ".#mikeBook"
```
 
## Inspirations

- [Misterio77/nixos-config](https://github.com/Misterio77/nix-config): General layout, and primary source!
- [malob/nixpkgs](https://github.com/malob/nixpkgs): random neat tricks and fun ideas. Probably also the security.pam for macOS
- [samhh/dotfiles](https://github.com/samhh/dotfiles): a nice simple mixed-os setup. Hoping to steal some ideas, and the home-automation installation parts. Also, age and git-crypt for secrets management.

## How to bootstrap

If this is a new machine, make sure you add it to `flake.nix`.

### MacOS
```bash
cd ~/Downloads

# Install homebrew https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install nix https://nixos.org/download.html#nix-install-macos
sh <(curl -L https://nixos.org/nix/install)

# Install nix-darwin https://github.com/LnL7/nix-darwin
mkdir tmp && cd tmp
nix-build https://github.com/LnL7/nix-darwin/archive/master.tar.gz -A installer
./result/bin/darwin-installer

# Check out repo via unauthed https
mkdir -p ~/.config && cd ~/.config
git clone https://github.com/mkantzer/dotfiles.git

cd dotfiles

# Launch nix-shell to ensure all needed tools are available
nix-shell

# Build and apply system config
darwin-rebuild build --flake .
darwin-rebuild switch --flake .

# Build and apply user config
home-manager build --flake .
home-manager switch --flake .
```

At this point, the environment should be _mostly_ configured. You'll _mainly_ just need to log into 1Password, at which point the credential helpers will be usable. 
