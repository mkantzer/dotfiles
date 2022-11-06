# This file (and the global directory) holds config that i use on all hosts
{ lib, inputs, outputs, ... }:
{
  imports = [
    ./fish.nix
    ./nix.nix
    # ./openssh.nix
    # ./podman.nix
    # ./postgres.nix
    # ./sops.nix
    # ./ssh-serve-store.nix
  ];

  environment = {
    # loginShellInit = ''
    #   # Activate home-manager environment, if not already
    #   [ -d "$HOME/.nix-profile" ] || /nix/var/nix/profiles/per-user/$USER/home-manager/activate &> /dev/null
    # '';
  };
}
