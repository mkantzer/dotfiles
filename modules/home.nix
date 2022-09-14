{ config, ... }:

{
  imports = [
    ../themes/theme.nix
    # ./options.nix
    ./bottom
    ./fish
    ./fonts
    ./git
    ./packages
    # ./helix
    ./nushell
    # ./starship
    ./zoxide
  ];

  programs.bat.enable = true;
}
