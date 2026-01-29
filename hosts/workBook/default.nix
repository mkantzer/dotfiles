# System configuration for my work laptop
{
  pkgs,
  inputs,
  outputs,
  ...
}: {
  imports = [
    ../common/global
    ../common/global-darwin
    ../common/optional/fonts.nix
  ];

  # Hostname
  networking.hostName = "workBook";
  system.stateVersion = 6;

  # User Management

  users.users.mk5r = {
    name = "mk5r";
    home = "/Users/mk5r";
  };
  home-manager.users.mk5r = {
    imports = [
      ../../home/mk5r/global
      ../../home/mk5r/work
    ];

    # This value determines the NixOS release from which the default
    # settings for stateful data, like file locations and database versions
    # on your system were taken. It‘s perfectly fine and recommended to leave
    # this value at the release version of the first install of this system.
    # Before changing this value read the documentation for this option
    # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
    home.stateVersion = "26.05"; # Did you read the comment?
  };
}
