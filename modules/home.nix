{ config, ... }:

{
  imports = [
    ./options.nix
    ../themes/theme.nix
    ./bottom
    ./git
    ./fish
    ./neovim
    ./packages
    ./fonts
    ./nushell
    ./zoxide
  ];

  programs.bat.enable = true;
}
