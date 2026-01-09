{
  pkgs,
  config,
  lib,
  outputs,
  ...
}: let
  ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in {
  # users.mutableUsers = false;
  # users.users.mk5r = {
  #   isNormalUser = true;
  # };

  #  home-manager.users.mk5r = import ../../../../home/mk5r/${config.networking.hostName}.nix;
}
