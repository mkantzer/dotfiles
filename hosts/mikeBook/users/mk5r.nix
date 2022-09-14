{ lib, ... }:

{
  imports = [
    ../../../users/mk5r.nix
  ];



  home-manager.users.mk5r = {
    imports = [
      ../../../modules/home.nix
      ../../../themes/tokyonight
      # ../../../modules/graphical-home.nix
      # ../../../modules/thinkpad-home.nix
    ];

    programs.alacritty.settings.font.size = lib.mkOverride 0 10.0;
  };
}
