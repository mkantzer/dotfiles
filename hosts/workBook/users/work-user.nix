{ lib, ... }:
{
  imports = [
    ../../../users/work-user.nix
    ../../../modules/homebrew
  ];

  home-manager.users.mikekantzer = {
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

      
  # Weird bug in home-manager?
  # https://github.com/nix-community/home-manager/issues/4026
  users.users.mikekantzer.home = config.home.homeDirectory;

}
