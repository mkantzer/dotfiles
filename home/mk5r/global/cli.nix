{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [];

  programs.pay-respects = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };

  programs.bottom = {
    enable = true;
    settings.flags.regex = true;
  };

  # Bat, a substitute for cat.
  # https://github.com/sharkdp/bat
  # https://rycee.gitlab.io/home-manager/options.html#opt-programs.bat.enable
  programs.bat = {
    enable = true;
    config = {
      style = "plain";
      paging = "never";
      theme = "TwoDark";
      tabs = "2";
      map-syntax = [
        "*.cue:Go"
      ];
    };
    extraPackages = with pkgs.bat-extras; [
      # batdiff
      # batman
    ];
  };

  # Direnv, load and unload environment variables depending on the current directory.
  # https://direnv.net
  # https://rycee.gitlab.io/home-manager/options.html#opt-programs.direnv.enable
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  # Htop
  # https://rycee.gitlab.io/home-manager/options.html#opt-programs.htop.enable
  programs.htop = {
    enable = true;
    settings.show_program_path = true;
  };

  programs.go.enable = true;

  programs.zoxide = {
    enable = true;
    # enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };

  home.packages = with pkgs; [
    # Some basics
    bottom # fancy version of `top` with ASCII graphs
    coreutils
    moreutils
    # curl
    tree
    bat
    # httpie
    dust # fancy version of `du`
    eza # fancy version of `ls`
    fd # fancy version of `find`
    htop # fancy version of `top`
    hyperfine # benchmarking tool
    mosh # wrapper for `ssh` thats better at not dropping connections
    # parallel # runs commands in parallel
    # python3Packages.shell-functools # a collection of functional programming tools for the shell
    ripgrep # better version of `grep`
    tealdeer # rust implementation of `tldr`
    # ffmpeg-full
    # thefuck # Removed due to no upstream maintenance, python incompatibility
    pay-respects
    unrar # extract RAR archives
    wget
    xz # extract XZ archives
    # gimp
    shfmt

    dive # for inspecting docker image layers
    pre-commit
    skaffold
    go-task
    mkcert
    nss #certutil
    fzf
    gh
    git
    usql
    kubectl
    kubernetes-helm
    chart-testing
    kustomize
    krew
    kubectx
    kubecfg
    k9s
    kind
    minikube

    cue
    jq
    yq-go
    postgresql

    # Useful nix related tools
    cachix # adding/managing alternative binary caches hosted by Cachix
    comma # run software from without installing it
    niv # easy dependency management for nix projects
    nix-tree # interactively browse dependency graphs of Nix derivations
    nix-update # swiss-knife for updating nix packages
    nixpkgs-fmt
    nixpkgs-review # review pull-requests on nixpkgs
    nix-prefetch-github
    statix # lints and suggestions for the Nix programming language
    # ] ++ lib.optionals stdenv.isDarwin [
    #   cocoapods
    #   m-cli # useful macOS CLI commands
    #   prefmanager # tool for working with macOS defaults

    # arduino-ide # linux only for some reason
    arduino-cli
    mpremote
    esptool
    espflash
    clang-format
  ];
}
