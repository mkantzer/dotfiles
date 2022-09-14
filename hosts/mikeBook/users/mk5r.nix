{ lib, ... }:

{
  imports = [
    ../../../users/mk5r.nix
  ];

  home-manager.users.zaechus = {
    imports = [
      ../../../modules/home.nix
      ../../../modules/homebrew
      ../../../themes/tokyonight
      ../../../modules/darwin-settings
      # ../../../modules/graphical-home.nix
      # ../../../modules/thinkpad-home.nix
    ];

    programs.alacritty.settings.font.size = lib.mkOverride 0 10.0;
  };
}
