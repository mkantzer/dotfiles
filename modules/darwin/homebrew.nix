# Homebrew via nix-homebrew. Darwin-only, so it is not in ../features.
{ config, lib, ... }:
{
  options.my.homebrew.enable = lib.mkEnableOption "Homebrew with the personal cask and brew lists";

  config = lib.mkIf config.my.homebrew.enable {
    nix-homebrew = {
      enable = true;
      enableRosetta = false;
      user = config.system.primaryUser;
      autoMigrate = true;
    };

    homebrew = {
      enable = true;
      onActivation.cleanup = "zap";
      global.brewfile = true;

      taps = [
        "nrlquaker/createzap"
        "osx-cross/avr"
        "osx-cross/arm"
        "turbot/tap"
        "argoproj/tap"
        "trufflesecurity/trufflehog"
        "helm/tap"
      ];

      casks = [
        "1password"
        "1password-cli"
        "alt-tab"
        "arduino-ide"
        "autodesk-fusion"
        "bartender"
        "docker-desktop"
        "lasso-app"
        "lens"
        "logi-options+"
        "kicad"
        "visual-studio-code"
        "iterm2"
        "mimestream"
        "balenaetcher"
        "discord"
        "google-chrome"
        "google-drive"
        "openvpn-connect"
        "obsidian"
        "moonlight"
        "notion"
        "pocket-casts"
        "prusaslicer"
        "raspberry-pi-imager"
        "rocket"
        "rodecaster"
        "spotify"
        "signal"
        "vivaldi"
        "zoom"
      ];

      # CLI tools that aren't available (or don't work) from nixpkgs on macOS.
      # Everything else belongs in home/mk5r.
      brews = [
        "mas"
        "httpie" # the nixpkgs build doesn't use the system CA certs
        "switchaudio-osx"
        "kube-ps1"
        "tfenv"
        "tofuenv"
        "trufflehog"
        "vfkit"
        "steampipe"
        "mpack" # https://apple.stackexchange.com/questions/346982/command-line-tool-to-batch-convert-eml-emlx-mbox-to-searchable-pdfs
        "minikube" # the nixpkgs build collides with kubectl
      ];
    };
  };
}
