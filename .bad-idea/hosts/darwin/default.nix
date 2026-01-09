{
  config,
  pkgs,
  ...
}: let
  user = "mk5r";
in {
  imports = [
    ../../modules/darwin/home-manager.nix
    ../../modules/shared
  ];

  nix = {
    package = pkgs.nix;

    settings = {
      trusted-users = ["@admin" "${user}"];
      substituters = ["https://nix-community.cachix.org" "https://cache.nixos.org"];
      trusted-public-keys = ["cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="];
    };

    gc = {
      automatic = true;
      interval = {
        Weekday = 0;
        Hour = 2;
        Minute = 0;
      };
      options = "--delete-older-than 30d";
    };

    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  environment.systemPackages = with pkgs;
    [
      terminal-notifier
    ]
    ++ (import ../../modules/shared/packages.nix {inherit pkgs;});

  # launchd.user.agents.emacs.path = [config.environment.systemPath];
  # launchd.user.agents.emacs.serviceConfig = {
  #   KeepAlive = true;
  #   ProgramArguments = [
  #     "/bin/sh"
  #     "-c"
  #     "/bin/wait4path ${pkgs.emacs}/bin/emacs && exec ${pkgs.emacs}/bin/emacs --fg-daemon"
  #   ];
  #   StandardErrorPath = "/tmp/emacs.err.log";
  #   StandardOutPath = "/tmp/emacs.out.log";
  # };

  system = {
    checks.verifyNixPath = false;
    primaryUser = user;
    stateVersion = 5;

    defaults = {
      NSGlobalDomain = {
        "com.apple.trackpad.scaling" = 1.0;
        "com.apple.swipescrolldirection" = true;
        AppleInterfaceStyle = "Dark";
        AppleInterfaceStyleSwitchesAutomatically = false;
        AppleMeasurementUnits = "Inches";
        AppleMetricUnits = 0;
        AppleShowScrollBars = "Automatic";
        AppleShowAllExtensions = true;
        AppleShowAllFiles = true;
        AppleTemperatureUnit = "Fahrenheit";
        ApplePressAndHoldEnabled = true;

        KeyRepeat = 2; # Values: 120, 90, 60, 30, 12, 6, 2
        InitialKeyRepeat = 15; # Values: 120, 94, 68, 35, 25, 15
        NSAutomaticCapitalizationEnabled = false;
        NSAutomaticDashSubstitutionEnabled = false;
        NSAutomaticPeriodSubstitutionEnabled = false;
        NSAutomaticQuoteSubstitutionEnabled = false;

        NSNavPanelExpandedStateForSaveMode = true;
        NSNavPanelExpandedStateForSaveMode2 = true;
        PMPrintingExpandedStateForPrint = true;
        PMPrintingExpandedStateForPrint2 = true;

        _HIHideMenuBar = false;

        "com.apple.mouse.tapBehavior" = 1;
        "com.apple.sound.beep.volume" = 0.50;
        "com.apple.sound.beep.feedback" = 1;
      };

      dock = {
        autohide = true;
        expose-group-apps = true;
        mru-spaces = false;
        orientation = "bottom";
        show-recents = false;
        launchanim = true;
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

      finder = {
        _FXShowPosixPathInTitle = false;
        FXEnableExtensionChangeWarning = true;
        ShowPathbar = true;
        # List view
        FXPreferredViewStyle = "Nlsv";
        _FXSortFoldersFirst = true;
        _FXSortFoldersFirstOnDesktop = true;
      };

      trackpad = {
        Clicking = true;
        TrackpadRightClick = true;
        TrackpadThreeFingerDrag = true;
      };
      # keyboard
    };
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
    };
  };
  security.pam.services.sudo_local.touchIdAuth = true;
}
