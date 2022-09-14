{ config, lib, ... }:

let
  inherit (lib) mkIf;
  mkIfCaskPresent = cask: mkIf (lib.any (x: x == cask) config.homebrew.casks);
  brewEnabled = config.homebrew.enable;
in

{
  environment.shellInit = mkIf brewEnabled ''
    eval "$(${config.homebrew.brewPrefix}/brew shellenv)"
  '';

  # https://docs.brew.sh/Shell-Completion#configuring-completions-in-fish
  # For some reason if the Fish completions are added at the end of `fish_complete_path` they don't
  # seem to work, but they do work if added at the start.
  programs.fish.interactiveShellInit = mkIf brewEnabled ''
    if test -d (brew --prefix)"/share/fish/completions"
      set -p fish_complete_path (brew --prefix)/share/fish/completions
    end

    if test -d (brew --prefix)"/share/fish/vendor_completions.d"
      set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
    end
  '';

  # Configuration related to casks
  environment.variables.SSH_AUTH_SOCK = mkIfCaskPresent "1password-cli"
    "/Users/${config.users.primaryUser.username}/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock";

  homebrew = {
    enable = true;
    autoUpdate = true;
    cleanup = "zap";
    global = {
      brewfile = true;
      noLock = true;
    };

    # Prefer installing application from the Mac App Store
    #
    # Commented apps suffer continual update issue:
    # https://github.com/malob/nixpkgs/issues/9
    # 
    # `mas list > mas.csv` to get list, then can rearrange by hand to get a CSV.
    # Can then sort via `sort -k[column] -t[delimeter] [filename]
    masApps = {
      # "1Password 7" = 1333542190;
      # "Bakery" = 1575220747;
      # "CARROT Weather" = 993487541;
      "Craft" = 1487937127;
      "Dark Noise" = 1465439395;
      "Deliveries" = 290986013;
      "Drafts" = 1435957248;
      "EventScripts" = 525319418;
      "Fantastical" = 975937182;
      "GIFwrapped" = 782319880;
      "GarageBand" = 682658836;
      "GoodNotes" = 1444383602;
      "Hyperspace Desktop" = 1454139710;
      "Jayson" = 1468691718;
      "Keeper Password Manager" = 414781829;
      "Keynote" = 409183694;
      "Kindle" = 405399194;
      "Kosmik" = 1479810209;
      "Matter" = 1548677272;
      "Microsoft OneNote" = 784801555;
      # "MindNode"                = 1289197285;
      "Muse" = 1501563902;
      "Notability" = 360593530;
      "Numbers" = 409203825;
      "Pages" = 409201541;
      "Parcel" = 639968404;
      "Slack" = 803453959;
      "Steam Link" = 1246969117;
      "Super Agent" = 1568262835;
      "Telegram" = 747648890;
      "Todoist" = 585829637;
      "Tripsy" = 1429967544;
      "Tweetbot" = 1384080005;
      "UTM" = 1538878817;
      "Vulcan" = 1533712040;
      # "Xcode" = 497799835;
      # "iMovie" = 408981434;
    };

    taps = [
      "homebrew/cask"
      "homebrew/cask-drivers"
      "homebrew/cask-fonts"
      "homebrew/cask-versions"
      "homebrew/core"
      "homebrew/services"
      "nrlquaker/createzap"
      "qmk/qmk"
      "osx-cross/avr"
      "osx-cross/arm"
      "turbot/tap"
    ];

    # If an app isn't available in the Mac App Store, or the version in the App Store has
    # limitiations, e.g., Transmit, install the Homebrew Cask.
    casks = [
      "alt-tab"
      "1password"
      "1password-cli"
      # "amethyst"
      # "balenaetcher"
      # "cloudflare-warp"
      # "discord"
      "firefox"
      # "google-chrome"
      "google-drive"
      # "gpg-suite"
      "hammerspoon"
      "keybase"
      "qmk-toolbox"
      # "obsidian"
      # "signal"
      # "steam"
      # "visual-studio-code"
    ];

    # For cli packages that aren't currently available for macOS in `nixpkgs`.Packages should be
    # installed in `../home/default.nix` whenever possible.
    brews = [
      "mas"
      "qmk/qmk/qmk"
      "switchaudio-osx"
      "docker-credential-helper-ecr"
      "kube-ps1"
      # "avr-gcc"
      "steampipe"
    ];
  };
}
