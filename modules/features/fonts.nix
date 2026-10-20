{
  config,
  lib,
  pkgs,
  ...
}:
{
  options.my.fonts.enable = lib.mkEnableOption "system-wide programming and emoji fonts";

  config = lib.mkIf config.my.fonts.enable {
    fonts.packages = with pkgs; [
      dejavu_fonts
      jetbrains-mono
      fira
      fira-code
      nerd-fonts.fira-code
      noto-fonts-color-emoji
      comic-neue
    ];
  };
}
