{
  inputs,
  lib,
  pkgs,
  config,
  outputs,
  ...
}: {
  imports = [
    ./arduino.nix
    ./cli.nix
    ./fish.nix
    ./git.nix
    ./kitty.nix
    ./programs.nix
    ./ssh.nix
    ./vim.nix
    ./zsh.nix
  ];

  programs = {
    # Allow home-manager to install and manage itself
    home-manager.enable = true;
  };
}
