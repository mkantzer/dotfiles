# This file (and the global directory) holds config that i use on all hosts
{ lib, inputs, outputs, ... }:
{
  imports = [
    ../global
    ./system.nix
    ./homebrew.nix
  ] ++ (builtins.attrValues outputs.darwinModules);

  # Fix for mid-build `cannot-link` problems
  nix.settings.auto-optimise-store = false;


  # See note below
  system.primaryUser = "mikekantzer";
}


# FROM AN ERROR:
/*
  Failed assertions:
  - Previously, some nix-darwin options applied to the user running
  `darwin-rebuild`. As part of a long‐term migration to make
  nix-darwin focus on system‐wide activation and support first‐class
  multi‐user setups, all system activation now runs as `root`, and
  these options instead apply to the `system.primaryUser` user.

  You currently have the following primary‐user‐requiring options set:

* `homebrew.enable`
* `system.defaults.NSGlobalDomain."com.apple.swipescrolldirection"`
* `system.defaults.NSGlobalDomain."com.apple.trackpad.scaling"`
* `system.defaults.NSGlobalDomain.AppleInterfaceStyle`
* `system.defaults.NSGlobalDomain.AppleInterfaceStyleSwitchesAutomatically`
* `system.defaults.NSGlobalDomain.AppleMeasurementUnits`
* `system.defaults.NSGlobalDomain.AppleMetricUnits`
* `system.defaults.NSGlobalDomain.AppleShowAllExtensions`
* `system.defaults.NSGlobalDomain.AppleShowAllFiles`
* `system.defaults.NSGlobalDomain.AppleShowScrollBars`
* `system.defaults.NSGlobalDomain.AppleTemperatureUnit`
* `system.defaults.NSGlobalDomain.InitialKeyRepeat`
* `system.defaults.NSGlobalDomain.KeyRepeat`
* `system.defaults.NSGlobalDomain.NSAutomaticCapitalizationEnabled`
* `system.defaults.NSGlobalDomain.NSAutomaticDashSubstitutionEnabled`
* `system.defaults.NSGlobalDomain.NSAutomaticPeriodSubstitutionEnabled`
* `system.defaults.NSGlobalDomain.NSAutomaticQuoteSubstitutionEnabled`
* `system.defaults.NSGlobalDomain.NSNavPanelExpandedStateForSaveMode`
* `system.defaults.NSGlobalDomain.NSNavPanelExpandedStateForSaveMode2`
* `system.defaults.NSGlobalDomain.PMPrintingExpandedStateForPrint`
* `system.defaults.NSGlobalDomain.PMPrintingExpandedStateForPrint2`
* `system.defaults.NSGlobalDomain._HIHideMenuBar`
* `system.defaults.dock.autohide`
* `system.defaults.dock.expose-group-apps`
* `system.defaults.dock.mru-spaces`
* `system.defaults.dock.orientation`
* `system.defaults.dock.tilesize`
* `system.defaults.dock.wvous-bl-corner`
* `system.defaults.dock.wvous-br-corner`
* `system.defaults.dock.wvous-tl-corner`
* `system.defaults.dock.wvous-tr-corner`
* `system.defaults.finder.FXEnableExtensionChangeWarning`
* `system.defaults.finder.FXPreferredViewStyle`
* `system.defaults.finder.ShowPathbar`
* `system.defaults.finder._FXSortFoldersFirst`
* `system.defaults.finder._FXSortFoldersFirstOnDesktop`
* `system.defaults.spaces.spans-displays`
* `system.defaults.trackpad.Clicking`
* `system.defaults.trackpad.TrackpadRightClick`

  To continue using these options, set `system.primaryUser` to the name
  of the user you have been using to run `darwin-rebuild`. In the long
  run, this setting will be deprecated and removed after all the
  functionality it is relevant for has been adjusted to allow
  specifying the relevant user separately, moved under the
  `users.users.*` namespace, or migrated to Home Manager.

  If you run into any unexpected issues with the migration, please
  open an issue at <https://github.com/nix-darwin/nix-darwin/issues/new>
  and include as much information as possible.
*/
