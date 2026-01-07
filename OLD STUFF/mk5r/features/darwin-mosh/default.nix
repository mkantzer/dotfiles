{ config, lib, pkgs, ... }:

{
  # Situation: 
  # The macOS firewall requires the _exact path_ of an executable, not a symlink. 
  # It also needs to be set via the _cli_ for mosh to actually work.
  # Here, we set up an actiation script to actually execute those actions.

  # Context and script source:
  home.activation = {
    enableMoshFirewall = lib.hm.dag.entryAfter [ "installPackages" ] ''
      $DRY_RUN_CMD sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate off
      $DRY_RUN_CMD sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add $(which mosh-server)
      $DRY_RUN_CMD sudo /usr/libexec/ApplicationFirewall/socketfilterfw --unblockapp $(which mosh-server)
      $DRY_RUN_CMD sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add $(readlink -f $(which mosh-server))
      $DRY_RUN_CMD sudo /usr/libexec/ApplicationFirewall/socketfilterfw --unblockapp $(readlink -f $(which mosh-server))
      $DRY_RUN_CMD sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
    '';
  };
}
