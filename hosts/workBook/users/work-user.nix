{ lib, ... }:

{
  imports = [
    ../../../users/work-user.nix

  ];



  home-manager.users.mkantzer = {
    imports = [
      ./git.nix

      ../../../themes/tokyonight
      # ../../../modules/graphical-home.nix
      # ../../../modules/thinkpad-home.nix
    ];

    # programs.alacritty.settings.font.size = lib.mkOverride 0 10.0;
  };
}
