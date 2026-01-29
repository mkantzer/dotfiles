{
  inputs,
  lib,
  pkgs,
  config,
  outputs,
  ...
}: {
  imports =
    [
      ./colors.nix
      ./fish.nix
      ./zsh.nix
      ./cli.nix
      ./git.nix
      ./ssh.nix
      ../features/nvim
    ]
    ++ (builtins.attrValues outputs.homeManagerModules);

  # home.file.".ssh/authorized_keys" = {
  #   enable = true;
  #   executable = false;
  #   text = ''
  #     ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF9K7mYtXECI6LD8iptulJC3eXZL4fE+M1M24UftlcnX mbkantzer@gmail.com
  #     ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIFnW0M2ZOK4/q5zQgMb03Cvq+DkVGaOEcqbozJXbVWh
  #   '';
  # };

  programs = {
    home-manager.enable = true;
    git.enable = true;
  };

  home = {
    username = lib.mkDefault "mk5r";
    homeDirectory =
      if pkgs.stdenv.isDarwin
      then lib.mkDefault "/Users/${config.home.username}"
      else lib.mkDefault "home/${config.home.username}";
    stateVersion = lib.mkDefault "22.05";
  };
}
