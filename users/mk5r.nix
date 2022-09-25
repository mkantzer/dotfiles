{ pkgs, ... }:

{
  home-manager.users.mk5r = {
    programs.git = {
      userName = "mk5r";
      userEmail = "github@kantzer.io";
    };

    home.file.".ssh/authorized_keys".text = ''
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF9K7mYtXECI6LD8iptulJC3eXZL4fE+M1M24UftlcnX mbkantzer@gmail.com
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIFnW0M2ZOK4/q5zQgMb03Cvq+DkVGaOEcqbozJXbVWh
    '';
  };

  # users.users.mk5r = {
  #   isNormalUser = true;
  #   extraGroups = [ "docker" "wheel" ];
  #   shell = pkgs.fish;
  #   hashedPassword = "$1$vMJP8Lok$MHrgfgH07GgIJXuAWADV4/";
  #   openssh.authorizedKeys.keys = [
  #     "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF9K7mYtXECI6LD8iptulJC3eXZL4fE+M1M24UftlcnX"
  #   ];
  # };
}
