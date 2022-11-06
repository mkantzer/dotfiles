{ pkgs, ... }:
{
  nix.configureBuildUsers = true;
  services.nix-daemon.enable = true;
  programs.nix-index.enable = true;

  environment.systemPackages =
    with pkgs; [
      terminal-notifier
    ];


  system = {
    defaults = {
      NSGlobalDomain = {
        "com.apple.trackpad.scaling" = 1.0;
        "com.apple.swipescrolldirection" = true;
        AppleInterfaceStyle = "Dark";
        AppleInterfaceStyleSwitchesAutomatically = false;
        AppleMeasurementUnits = "Inches";
        AppleMetricUnits = 0;
        AppleShowScrollBars = "Automatic";
        AppleShowAllFiles = true;
        AppleShowAllExtensions = true;
        AppleTemperatureUnit = "Fahrenheit";
        InitialKeyRepeat = 15;
        KeyRepeat = 2;
        NSAutomaticCapitalizationEnabled = false;
        NSAutomaticDashSubstitutionEnabled = false;
        NSAutomaticPeriodSubstitutionEnabled = false;
        NSAutomaticQuoteSubstitutionEnabled = false;

        NSNavPanelExpandedStateForSaveMode = true;
        NSNavPanelExpandedStateForSaveMode2 = true;
        PMPrintingExpandedStateForPrint = true;
        PMPrintingExpandedStateForPrint2 = true;

        _HIHideMenuBar = false;
      };
      # Firewall
      alf = {
        globalstate = 1;
        allowsignedenabled = 1;
        allowdownloadsignedenabled = 1;
        stealthenabled = 1;
      };
      # Dock and Mission Control
      dock = {
        autohide = true;
        expose-group-by-app = true;
        mru-spaces = false;
        orientation = "bottom";
        tilesize = 60;
        # Disable all hot corners
        wvous-bl-corner = 1;
        wvous-br-corner = 1;
        wvous-tl-corner = 1;
        wvous-tr-corner = 1;
      };
      # Login and lock screen
      loginwindow = {
        GuestEnabled = false;
        DisableConsoleAccess = true;
      };
      # Spaces
      spaces.spans-displays = false;
      # Trackpad
      trackpad = {
        Clicking = true;
        TrackpadRightClick = true;
      };

      # Finder
      finder = {
        FXEnableExtensionChangeWarning = true;
        ShowPathbar = true;
      };
    };

    # keyboard
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
    };
  };
  security.pam.enableSudoTouchIdAuth = true;
}
