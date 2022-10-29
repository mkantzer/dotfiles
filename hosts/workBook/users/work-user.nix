{ lib, ... }:

{
  imports = [
    ../../../users/work-user.nix
    ../../../modules/homebrew
  ];



  home-manager.users.mkantzer = {
    imports = [
      ./git.nix

      ../../../modules/fish
      ../../../modules/git
      ../../../modules/neovim
      ../../../modules/packages
      ../../../modules/zsh

      ../../../themes/tokyonight
    ];
    home.stateVersion = "21.11";
  };

}
