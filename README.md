# dotfiles

Configuring all my nonsense with [Nix](https://nixos.org). Attempting to keep it simple, but we'll see how that goes.

The repo configures the following hosts:
<!-- - mikeBox: a theoretical nixOS install on my main desktop computer -->
<!-- - tvBox: a theoretical nixOS install on dad's old machine-->
<!-- - homePi: a raspberry pi 4 with random stuff on it -->
- mikeBook: my personal macOS laptop
- workBook: work-provided macOS laptop

## Usage



## Inspirations
- [LongerHV/nixos-configuration](https://github.com/LongerHV/nixos-configuration): seems like a solid place to start, and also has decent links out.
- [Misterio77/nix-starter-configs](https://github.com/Misterio77/nix-starter-configs/blob/main/README.md): pretty okay templates?

## How to bootstrap

If this is a new machine, make sure you add it to `flake.nix`.

### MacOS
```bash
cd ~/Downloads

# Install homebrew https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install lix - https://lix.systems/install/#on-any-other-linuxmacos-system
curl -sSf -L https://install.lix.systems/lix | sh -s -- install

# # Install nix-darwin
sudo nix run nix-darwin/nix-darwin-25.05#darwin-rebuild -- switch

# Check out repo via unauthed https
mkdir -p ~/.config && cd ~/.config
git clone https://github.com/mkantzer/dotfiles.git
cd dotfiles

# Build and apply system config
darwin-rebuild build --flake .
darwin-rebuild switch --flake .

# Build and apply user config
home-manager build --flake .
home-manager switch --flake .
```