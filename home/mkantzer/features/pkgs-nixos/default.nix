{ config, lib, pkgs, ... }:

{

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
    };
  };

  # Direnv, load and unload environment variables depending on the current directory.
  # https://direnv.net
  # https://rycee.gitlab.io/home-manager/options.html#opt-programs.direnv.enable
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
  # environment.pathsToLink = [ "/share/fish" ];


  # Htop
  # https://rycee.gitlab.io/home-manager/options.html#opt-programs.htop.enable
  programs.htop = {
    enable = true;
    settings.show_program_path = true;
  };

  # Zoxide, a faster way to navigate the filesystem
  # https://github.com/ajeetdsouza/zoxide
  # https://rycee.gitlab.io/home-manager/options.html#opt-programs.zoxide.enable

  # # Remove ASAP: only here for temp development while getting configs (like vscode) ready
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
    curl

    tree
    bat
    httpie

    du-dust # fancy version of `du`
    exa # fancy version of `ls`
    fd # fancy version of `find`
    htop # fancy version of `top`
    hyperfine # benchmarking tool
    mosh # wrapper for `ssh` that better and not dropping connections
    # parallel # runs commands in parallel
    # python3Packages.shell-functools # a collection of functional programming tools for the shell
    ripgrep # better version of `grep`
    tealdeer # rust implementation of `tldr`
    thefuck
    unrar # extract RAR archives
    wget
    xz # extract XZ archives

    # Dev stuff
    # (agda.withPackages (p: [ p.standard-library ]))
    docker
    docker-compose
    skaffold
    go-task

    fzf
    gh
    git
    # kube-ps1

    # Cloud Stuff
    kubectl
    krew
    kubectx
    kubecfg
    kustomize
    kind

    cue

    awscli2
    kubernetes-helm
    argo
    # argocd
    chart-testing
    # kube-prompt # seriously, pretty sure it's borken

    # terraform-docs
    # terraform
    terragrunt

    jq
    yq-go
    nodePackages.typescript
    nodejs
    s3cmd

    # fun nonsense
    youtube-dl
    pandoc

    keybase

    # Useful nix related tools
    cachix # adding/managing alternative binary caches hosted by Cachix
    comma # run software from without installing it
    niv # easy dependency management for nix projects
    nix-tree # interactively browse dependency graphs of Nix derivations
    nix-update # swiss-knife for updating nix packages
    nixpkgs-fmt
    nixpkgs-review # review pull-requests on nixpkgs
    nix-prefetch-github
    nodePackages.node2nix
    yarn2nix
    statix # lints and suggestions for the Nix programming language
    # ] ++ lib.optionals stdenv.isDarwin [
    #   cocoapods
    #   m-cli # useful macOS CLI commands
    #   prefmanager # tool for working with macOS defaults
  ];
}
