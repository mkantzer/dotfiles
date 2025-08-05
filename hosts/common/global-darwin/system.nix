{ pkgs, ... }:
{
  nix.enable = true;
  programs.nix-index.enable = true;

  environment.systemPackages =
    with pkgs; [
      terminal-notifier
    ];

  # fonts.fontDir.enable = true;

  # Firewall
  networking.applicationFirewall = {
    enable = true;
    enableStealthMode = true;
    allowSigned = true;
    allowSignedApp = true;
  };

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
      # Dock and Mission Control
      dock = {
        autohide = true;
        expose-group-apps = true;
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
        # List view
        FXPreferredViewStyle = "Nlsv";
        _FXSortFoldersFirst = true;
        _FXSortFoldersFirstOnDesktop = true;
      };
    };

    # keyboard
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
    };
  };
  security.pam.services.sudo_local.touchIdAuth = true;
}
