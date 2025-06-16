{ config, lib, pkgs, ... }: {
  imports = [
    ./aws.nix
    # ./bash.nix
    # ./bat.nix
    ./completions.nix
    ./fish.nix
    ./git.nix
    # ./gpg.nix
    # ./nix-index.nix
    # ./pfetch.nix
    # ./ranger.nix
    # ./screen.nix
    # ./shellcolor.nix
    ./ssh.nix
    # ./starship.nix
    # ./xpo.nix
  ];

  programs.pay-respects = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };
}
