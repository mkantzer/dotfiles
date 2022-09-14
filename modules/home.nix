{ config, ... }:

{
  imports = [
    # ./options.nix
    ../themes/theme.nix
    ./bottom
    ./git
    ./fish
    ./neovim
    ./packages
    # ./nushell
    ./zoxide
  ];

  programs.bat.enable = true;
}
