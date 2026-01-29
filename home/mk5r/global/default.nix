{
  inputs,
  lib,
  pkgs,
  config,
  outputs,
  ...
}: {
  imports = [
    ./cli.nix
    ./fish.nix
    ./git.nix
    ./kitty.nix
    ./ssh.nix
    ./vim.nix
    ./zsh.nix
  ];

  programs = {
    # Allow home-manager to install and manage itself
    home-manager.enable = true;
  };
}
