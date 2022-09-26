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

- [Zaechus/nixos-config](https://github.com/Zaechus/nixos-config): General layout, and primary source!
- [fufexan/dotfiles](https://github.com/fufexan/dotfiles): general folder layout
- [malob/nixpkgs](https://github.com/malob/nixpkgs): random neat tricks and fun ideas. Probably also the security.pam for macOS
- [samhh/dotfiles](https://github.com/samhh/dotfiles): a nice simple mixed-os setup. Hoping to steal some ideas, and the home-automation installation parts. Also, age and git-crypt for secrets management.

# Bootstrapping

(copied from [here](https://github.com/mkantzer/nixpkgs/blob/8dd81419f0b4064278aa5c5d054ef877f7de3e18/readme.md#L6-L7))

```sh
# Let's install nix (at the time of writing this is version 2.5.1
curl -L https://nixos.org/nix/install | sh

# I might not have needed to, but I rebooted
mkdir -p ~/.config/nix

# Enable nix-command and flakes to bootstrap 
cat <<EOF > ~/.config/nix/nix.conf
command flakes
EOF

# Get this repo
cd ~/.config
git clone git@github.com:mkantzer/nixpkgs.git

# Until this is addressed https://github.com/LnL7/nix-darwin/issues/149
sudo mv /etc/nix/nix.conf /etc/nix/.nix-darwin.bkp.nix.conf
# Build the configuration
nix build .#darwinConfigurations.mikes-mbp-3.system
./result/sw/bin/darwin-rebuild switch --flake .
# Enjoy!
```