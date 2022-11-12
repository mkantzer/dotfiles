{ pkgs, ... }:
{
  home-manager.users.mkantzer = {
    programs.git = {
      userName = "mkantzer-drizly";
      userEmail = "mike.kantzer@drizly.com";
    };

    home.file.".ssh/authorized_keys".text = ''
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF9K7mYtXECI6LD8iptulJC3eXZL4fE+M1M24UftlcnX mbkantzer@gmail.com
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIFnW0M2ZOK4/q5zQgMb03Cvq+DkVGaOEcqbozJXbVWh
    '';
  };
}
