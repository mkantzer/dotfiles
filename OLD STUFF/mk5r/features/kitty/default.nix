{ config, pkgs, ... }:

/*
  Insparation for the theme management:
  - https://ryan.himmelwright.net/post/home-manager-dark-mode/
  - https://github.com/mkantzer/AppearanceNotifier

  The basic idea is that I set up kitty as usual, but then also install my own fork of
  AppearanceNotifier to swap to my other theme when the system changes.

  Theme names can be found by running `kitty +kitten themes`
  - https://mynixos.com/home-manager/option/programs.kitty.theme
  - https://github.com/kovidgoyal/kitty-themes
*/

let
  kitty-theme = {
    dark = "Nord";
    # light = "Leaf Light";
    light = "Snow Light";
  };
in
{
  home.sessionVariables = {
    TERMINAL = "kitty";
  };

  # Create a themes.conf so we can use github.com/mkantzer/AppearanceNotifier
  # to switch just this value. Also, use dark by default.
  home.file.".config/kitty/themes.conf" = {
    text = ''
      theme ${kitty-theme.dark}
    '';
  };

  programs.kitty = {
    enable = true;
    extraConfig = ''
      include themes.conf
    '';
    settings = {
      shell = "${pkgs.fish}/bin/fish";
      scrollback_lines = 2000;
      font_size = "16.0";
      font_family = "FiraCode Nerd Font";
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";

      active_tab_foreground = "#282c34";
      active_tab_background = "#979eab";
      inactive_tab_foreground = "#abb2bf";
      inactive_tab_background = "#282c34";

      foreground = "#979eab";
      background = "#282c34";

      # Commented, because I'm going to try native theme management
      # color0 = "#282c34";
      # color1 = "#e06c75";
      # color2 = "#98c379";
      # color3 = "#e5c07b";
      # color4 = "#61afef";
      # color5 = "#be5046";
      # color6 = "#56b6c2";
      # color7 = "#979eab";
      # color8 = "#393e48";
      # color9 = "#d19a66";
      # color10 = "#56b6c2";
      # color11 = "#e5c07b";
      # color12 = "#61afef";
      # color13 = "#be5046";
      # color14 = "#56b6c2";
      # color15 = "#abb2bf";


      tab_bar_edge = "top";
      tab_bar_align = "center";
      tab_bar_style = "fade";
      shell_integration = "enabled";

      copy_on_select = "clipboard";
    };
  };
}
