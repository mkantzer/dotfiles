{ config, lib, ... }:

with lib;

{
  imports = [
    ../themes/theme.nix
    ./neovim
    ./zsh
  ];

  config = {
    programs.bat.enable = true;
    programs.bottom.enable = true;
    programs.git.enable = true;

    home.sessionVariables = {
      MANPAGER = "sh -c 'col -bx | bat -l man -p'";
      PAGER = "bat";
    };

    home.shellAliases = {
      btm = config.alias.btm;
      diff = "diff --color";
      doas = "sudo";
      l = "exa --icons --color=always";
      ll = "l -aalg";
      lisosort = "exa -lRs size --no-permissions --no-user --no-time ~/images/disk/**/*.iso";
      pp = "ping 1.1.1.1";
      watch = "watch -c -n 1 ";
    };
  };

  options.alias.btm = mkOption { type = types.str; default = "btm -R"; };
}
