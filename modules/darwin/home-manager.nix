{
  config,
  pkgs,
  lib,
  home-manager,
  ...
}: let
  user = "mk5r";
  # Define the content of your file as a derivation
  sharedFiles = import ../shared/files.nix {inherit config pkgs;};
  additionalFiles = import ./files.nix {inherit user config pkgs;};
in {
  imports = [
    # ./dock
  ];

  # It me
  users.users.${user} = {
    name = "${user}";
    home = "/Users/${user}";
    isHidden = false;
    shell = pkgs.zsh;
    # shell = pkgs.fish;
  };

  homebrew = {
    enable = true;
    casks = pkgs.callPackage ./casks.nix {};
    # onActivation.cleanup = "uninstall";

    # These app IDs are from using the mas CLI app
    # mas = mac app store
    # https://github.com/mas-cli/mas
    #
    # $ nix shell nixpkgs#mas
    # $ mas search <app name>
    #
    # If you have previously added these apps to your Mac App Store profile (but not installed them on this system),
    # you may receive an error message "Redownload Unavailable with This Apple ID".
    # This message is safe to ignore. (https://github.com/dustinlyons/nixos-config/issues/83)
    masApps = {
      "1Blocker" = 1365531024;
      "Actions" = 1586435171;
      #   # "CARROT Weather" = 993487541;
      "Craft" = 1487937127;
      "Crouton: Recipe Manager" = 1461650987;
      "Dark Noise" = 1465439395;
      "Drafts" = 1435957248;
      "Fantastical" = 975937182;
      "Flighty" = 1358823008;
      "GIFwrapped" = 782319880;
      "Hand Mirror" = 1502839586;
      "Kindle" = 405399194;
      "Logger" = 1611554653;
      "Mela – Recipe Manager" = 1568924476;
      "Microsoft OneNote" = 784801555;
      "Muse" = 1501563902;
      "Nautomate" = 1608529689;
      "Notability" = 360593530;
      "Numbers" = 409203825;
      "Pages" = 409201541;
      "Parcel" = 639968404;
      "Slack" = 803453959;
      "Soulver 3" = 1508732804;
      "Steam Link" = 1246969117;
      "Super Agent" = 1568262835;
      "Telegram" = 747648890;
      "Todoist" = 585829637;
      #   "Tripsy" = 1429967544;
      #   "UTM" = 1538878817;
      "WireGuard" = 1451685025;
      #   # "Xcode" = 497799835;
      #   # "iMovie" = 408981434;
    };
    taps = [
      "nrlquaker/createzap"
      # "qmk/qmk"
      "osx-cross/avr"
      "osx-cross/arm"
      "turbot/tap"
      "argoproj/tap"
      "trufflesecurity/trufflehog"
      "helm/tap"
      # "datawire/blackbird" # telepresence
    ];

    # For cli packages that aren't currently available for macOS in `nixpkgs`.
    brews = [
      "nss" # certutils
      "switchaudio-osx"
      "kube-ps1"
      "tfenv"
      "trufflehog"
      # "kubectl-argo-rollouts"
      "vfkit"

      # handled here instead of as any other package because of weird QEMU stuff?
      # "podman"
      # "podman-compose"
      "steampipe"
      # "youtube-dl"
    ];
  };

  # Enable home-manager
  home-manager = {
    useGlobalPkgs = true;
    users.${user} = {
      pkgs,
      config,
      lib,
      ...
    }: {
      home = {
        enableNixpkgsReleaseCheck = false;
        packages = pkgs.callPackage ./packages.nix {};
        file = lib.mkMerge [
          sharedFiles
          additionalFiles
        ];
        stateVersion = "23.11";
      };
      programs = {} // import ../shared/home-manager.nix {inherit config pkgs lib;};

      # Marked broken Oct 20, 2022 check later to remove this
      # https://github.com/nix-community/home-manager/issues/3344
      manual.manpages.enable = false;
    };
  };

  # Fully declarative dock using the latest from Nix Store
  # Do this later, maybe.
  # local.dock = {
  #   enable = true;
  #   username = user;
  #   entries = [
  #     {path = "/Applications/Safari.app/";}
  #     {path = "/System/Applications/Messages.app/";}
  #     {path = "/System/Applications/Notes.app/";}
  #     {path = "${pkgs.alacritty}/Applications/Alacritty.app/";}
  #     {path = "/System/Applications/Music.app/";}
  #     {path = "/System/Applications/Photos.app/";}
  #     {path = "/System/Applications/Photo Booth.app/";}
  #     {path = "/System/Applications/System Settings.app/";}
  #     {
  #       path = toString myEmacsLauncher;
  #       section = "others";
  #     }
  #     {
  #       path = "${config.users.users.${user}.home}/Downloads";
  #       section = "others";
  #       options = "--sort name --view grid --display stack";
  #     }
  #   ];
  # };
}
