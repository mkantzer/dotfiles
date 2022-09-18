{ lib, pkgs, ... }:
{
  imports = [
    ../../../users/mk5r.nix
  ];

  home-manager.users.mk5r = {
    imports = [
      ../../../themes/tokyonight
      ../../../modules/bottom
    ];




    home.file.".ssh/authorized_keys".text = ''
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF9K7mYtXECI6LD8iptulJC3eXZL4fE+M1M24UftlcnX
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIFnW0M2ZOK4/q5zQgMb03Cvq+DkVGaOEcqbozJXbVWh
    '';


  };
}



