{ pkgs, ... }:

{
  fonts = {
    fonts = with pkgs; [
      dejavu_fonts
      JetBrainsMono
      fira
      fira-code
      (nerdfonts.override { fonts = [ "FiraCode" ]; })
      noto-fonts-emoji
    ];

    fontconfig = {
      defaultFonts = {
        monospace = [ "FiraCode Nerd Font" ];
      };
      subpixel.lcdfilter = "light"; # fix the bar in lualine
    };
  };
}
