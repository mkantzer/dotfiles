{
  inputs,
  lib,
  pkgs,
  config,
  outputs,
  ...
}: let
  inherit (inputs.nix-colors) colorSchemes;
in {
  imports = [
    inputs.nix-colors.homeManagerModule
  ];

  # https://github.com/tinted-theming/base16-schemes
  colorscheme = lib.mkDefault colorSchemes.onedark;
  # wallpaper = lib.mkDefault (nixWallpaperFromScheme {
  #   scheme = config.colorscheme;
  #   width = 2560;
  #   height = 1080;
  #   logoScale = 4.5;
  # });

  home.file.".colorscheme".text = config.colorscheme.slug;
}
