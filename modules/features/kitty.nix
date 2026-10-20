{
  config,
  lib,
  pkgs,
  ...
}:
{
  options.my.kitty.enable = lib.mkEnableOption "the kitty terminal";

  config = lib.mkIf config.my.kitty.enable {
    home-manager.users.${config.my.user.name} = {
      home.sessionVariables.TERMINAL = "kitty";

      programs.kitty = {
        enable = true;
        # Theme names: `kitty +kitten themes`
        autoThemeFiles = {
          noPreference = "Nordfox";
          dark = "Nordfox";
          light = "SnowLight";
        };

        settings = {
          shell = lib.getExe pkgs.fish;
          scrollback_lines = 2000;
          font_size = "13.0";
          font_family = "FiraCode Nerd Font";
          bold_font = "auto";
          italic_font = "auto";
          bold_italic_font = "auto";

          tab_bar_edge = "top";
          tab_bar_align = "center";
          tab_bar_style = "fade";
          shell_integration = "enabled";

          copy_on_select = "clipboard";
        };
      };
    };
  };
}
