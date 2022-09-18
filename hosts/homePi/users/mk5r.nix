{ lib, ... }:

{
  imports = [
    ../../../users/mk5r.nix
  ];

  home-manager.users.mk5r = {
    imports = [
      # ../../../modules/bottom
      # ../../../modules/fish
      # ../../../modules/git
      # ../../../modules/neovim
      # ../../../modules/packages
      # ../../../modules/tmux
      # ../../../modules/vim
      # ../../../modules/zoxide
      # ../../../modules/zsh
      # ../../../themes/tokyonight
      # ../../../modules/graphical-home.nix
      # ../../../modules/thinkpad-home.nix
      # ../../../modules/dev/home.nix
      # ../../../modules/dev/rust/home.nix
    ];

    # bt = {
    #   enable = true;
    #   mac = "F4:0E:11:5E:16:14";
    # };

    # wayland.windowManager.sway.config.output.eDP-1.subpixel = "rgb";

    home.stateVersion = "21.11";
  };
}
