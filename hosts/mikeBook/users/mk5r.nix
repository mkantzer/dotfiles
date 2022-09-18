{ lib, pkgs, ... }:
{
  imports = [
    ../../../users/mk5r.nix
  ];

  home-manager.users.mk5r = {
    imports = [
      ../../../modules/bottom
      ../../../modules/fish
      ../../../modules/git
      ../../../modules/neovim
      ../../../modules/packages
      ../../../modules/zsh

      # ../../../modules/graphical-home.nix
      # ../../../modules/thinkpad-home.nix

      ../../../themes/tokyonight
    ];

    home.file.".ssh/authorized_keys".text = ''
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF9K7mYtXECI6LD8iptulJC3eXZL4fE+M1M24UftlcnX mbkantzer@gmail.com
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIFnW0M2ZOK4/q5zQgMb03Cvq+DkVGaOEcqbozJXbVWh
    '';
  };
}



