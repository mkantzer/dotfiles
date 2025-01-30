{ pkgs, ... }:


# TODO: Change terminals to use these fonts?
{
  fonts = {
    packages = with pkgs; [
      dejavu_fonts
      jetbrains-mono
      fira
      fira-code
      nerd-fonts.fira-code
      noto-fonts-emoji
      comic-neue
    ];
    # fontconfig = {
    #   defaultFonts = {
    #     monospace = [ "FiraCode Nerd Font" ];
    #   };
    #   subpixel.lcdfilter = "light"; # fix the bar in lualine
    # };
  };
}
