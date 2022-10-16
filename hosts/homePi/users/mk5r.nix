{ lib, pkgs, ... }:

{
  imports = [
    ../../../users/mk5r.nix
  ];

  home-manager.users.mk5r = {
    imports = [
      ../../../modules/fish
      ../../../modules/git
      ../../../modules/neovim
      ../../../modules/packages
      ../../../modules/zsh

      ../../../themes/tokyonight
    ];


    # bt = {
    #   enable = true;
    #   mac = "F4:0E:11:5E:16:14";
    # };

    # wayland.windowManager.sway.config.output.eDP-1.subpixel = "rgb";

    home.stateVersion = "21.11";
  };


  users.users.mk5r = {
    isNormalUser = true;
    home = "/home/mk5r";
    extraGroups = [ "docker" "wheel" ];
    shell = pkgs.fish;
    hashedPassword = "$6$KEPLERBUDDY$38tDlQ2aKlX5DVfjE4vcSL.VEIyJCHC0uYD/m6zAh/IRe1L1eKogQ1w79RFSFCiWxozWJB7WgeGgKE.aioqR70";
  };
}
