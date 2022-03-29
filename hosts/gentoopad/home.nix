{ config, pkgs, lib, ... }:

{
  imports =
    [
      ../../modules/common.nix
    ];
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "zaechus";
  home.homeDirectory = "/home/zaechus";

  # Use system packages
  wayland.windowManager.sway = {
    package = null;
    config.terminal = lib.mkOverride 10 "/usr/bin/alacritty";
  };

  # Gentoo-specific aliases
  programs.zsh.shellAliases = {
    batworld = ''
      sed 's~.*/~~' /var/lib/portage/world | sort | bat
    '';
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
