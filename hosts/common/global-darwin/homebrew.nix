{ config, lib, ... }:

{
  environment.shellInit = ''
    eval "$(/opt/homebrew/bin/brew shellenv)"
  '';

  # https://docs.brew.sh/Shell-Completion#configuring-completions-in-fish
  # For some reason if the Fish completions are added at the end of `fish_complete_path` they don't
  # seem to work, but they do work if added at the start.
  programs.fish.interactiveShellInit = ''
    if test -d (brew --prefix)"/share/fish/completions"
      set -p fish_complete_path (brew --prefix)/share/fish/completions
    end

    if test -d (brew --prefix)"/share/fish/vendor_completions.d"
      set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
    end
  '';

  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      cleanup = "zap";
      upgrade = true;
    };
    global = {
      brewfile = true;
      lockfiles = false;
    };

    # Prefer installing application from the Mac App Store
    #
    # Commented apps suffer continual update issue:
    # https://github.com/malob/nixpkgs/issues/9
    # 
    # `mas list > mas.csv` to get list, then can rearrange by hand to get a CSV.
    # Can then sort via `sort -k[column] -t[delimeter] [filename]
    masApps = {
      #   # "1Password 8" = 1333542190;
      "1Blocker" = 1365531024;
      #   # "Bakery" = 1575220747;
      "Bear – Markdown Notes" = 1091189122;
      #   # "CARROT Weather" = 993487541;
      "Craft" = 1487937127;
      "Dark Noise" = 1465439395;
      "Drafts" = 1435957248;
      "EventScripts" = 525319418;
      "Fantastical" = 975937182;
      "forScore" = 363738376;
      "GIFwrapped" = 782319880;
      #   "GarageBand" = 682658836;
      #   "GoodNotes" = 1444383602;
      "Hyperspace Desktop" = 1454139710;
      #   "Keeper Password Manager" = 414781829;
      #   "Keynote" = 409183694;
      "Kindle" = 405399194;
      #   "Kosmik" = 1479810209;
      #   "Matter" = 1548677272;
      "Mela – Recipe Manager" = 1568924476;
      "Microsoft OneNote" = 784801555;
      "Muse" = 1501563902;
      "Notability" = 360593530;
      "Numbers" = 409203825;
      "Pages" = 409201541;
      "Parcel" = 639968404;
      "Shapr 3D CAD modeling" = 1091675654;
      "Slack" = 803453959;
      "Soulver 3" = 1508732804;
      "Steam Link" = 1246969117;
      "Super Agent" = 1568262835;
      "Telegram" = 747648890;
      # "TickTick:To-Do List, Calendar" = 966085870;
      "Todoist" = 585829637;
      #   "Tripsy" = 1429967544;
      #   "Tweetbot" = 1384080005;
      #   "UTM" = 1538878817;
      "WhatsApp Messenger" = 310633997;
      "WireGuard" = 1451685025;
      #   # "Xcode" = 497799835;
      #   # "iMovie" = 408981434;
    };

    taps = [
      # "homebrew/cask" # Tapping cask is no longer typically necessary.
      # "homebrew/core" # Tapping homebrew/core is no longer typically necessary.
      "homebrew/cask-drivers"
      "homebrew/cask-fonts"
      "homebrew/cask-versions"
      "homebrew/services"
      "nrlquaker/createzap"
      # "qmk/qmk"
      "osx-cross/avr"
      "osx-cross/arm"
      "turbot/tap"
      "trufflesecurity/trufflehog"
      "helm/tap"
      "datawire/blackbird" # telepresence
    ];

    # If an app isn't available in the Mac App Store, or the version in the App Store has
    # limitiations, e.g., Transmit, install the Homebrew Cask.
    casks = [
      #   "alt-tab"
      "1password"
      "1password-cli"
      "anylist"
      # "autodesk-fusion360"
      "bartender"
      "calibre"
      # "docker"
      "firefox"
      # "rectangle-pro"
      "lasso"
      "loopback"
      "logi-options-plus"
      "kitty"
      "visual-studio-code"
      "iterm2"
      "mimestream"
      "balenaetcher"
      "discord"
      "google-chrome"
      "google-drive"
      "openvpn-connect"
      "obsidian"
      "openscad"
      "pocket-casts"
      "podman-desktop"
      "spotify"
      "soundsource"
      "rocket"
      # "keybase"
      # "qmk-toolbox"
      "signal"
      "steam"
      "ultimaker-cura"
      "vivaldi"
      "zed"
      "zoom"
    ];

    # For cli packages that aren't currently available for macOS in `nixpkgs`.Packages should be
    # installed in `../home/default.nix` whenever possible.
    brews = [
      "mas"
      # "qmk/qmk/qmk"
      "switchaudio-osx"
      # "docker"
      # "docker-compose"
      # "docker-credential-helper-ecr"
      "kube-ps1"
      "tfenv"
      # "go"
      "trufflehog"
      # "datawire/blackbird/telepresence-arm64"
      # "mosh"
      # "gcloud"
      # "chart-releaser"
      # "chart-testing"
      # "avr-gcc"

      # handled here instead of as any other package because of weird QEMU stuff?
      "podman"
      "podman-compose"
      

      "steampipe"
      "youtube-dl"

      "packer"
      "ansible"
    ];
  };
}
