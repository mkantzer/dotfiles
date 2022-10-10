{ lib, pkgs, ... }:
{
  imports = [
    ../../../users/mk5r.nix
    ../../../modules/homebrew
  ];

  home-manager.users.mk5r = {
    imports = [


      ../../../modules/fish
      ../../../modules/git
      ../../../modules/neovim
      ../../../modules/packages
      ../../../modules/vscode
      ../../../modules/zsh

      ../../../themes/tokyonight
    ];
  };
}
