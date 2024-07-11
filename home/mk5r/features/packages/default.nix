{ config, lib, pkgs, ... }:

{
  # imports = [
  #   ./k8s.nix
  # ];

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
      batdiff
      batman
    ];
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

  programs.go.enable = true;

  programs.zoxide = {
    enable = true;
    # enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };

  home.packages =
    let
      distroSpecific =
        if pkgs.stdenv.isDarwin
        then with pkgs; [ 
          wireguard-tools
        ]
        else with pkgs; [
          tshm
          obsidian # installs better on macos through brew/cask
          podman
          podman-compose
          podman-desktop
        ];
    in
    with pkgs; [
      # Some basics
      bottom # fancy version of `top` with ASCII graphs
      coreutils
      moreutils
      curl

      tree
      bat
      httpie

      du-dust # fancy version of `du`
      eza # fancy version of `ls`
      fd # fancy version of `find`
      htop # fancy version of `top`
      hyperfine # benchmarking tool
      mosh # wrapper for `ssh` thats better at not dropping connections

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
      # docker
      # docker-compose
      pre-commit
      skaffold
      go-task

      fzf
      gh
      git
      usql
      # kube-ps1

      kubectl
      # kubectl-argo-rollouts
      kubernetes-helm
      chart-testing
      kustomize
      krew
      kubectx
      kubecfg
      k9s
      kind
      argo
      argocd
      argo-rollouts
      linkerd
      telepresence2
      # kube-prompt # seriously, pretty sure it's borken

      cue
      (lua.withPackages (ps: with ps; [
        cjson
        inspect
      ]))

      awscli2
      # google-cloud-sdk
      (google-cloud-sdk.withExtraComponents [
        google-cloud-sdk.components.gke-gcloud-auth-plugin
      ])

      # terraform-docs
      # terraform
      terragrunt

      jq
      yq-go
      nodePackages.typescript
      nodejs
      s3cmd
      go-jsonnet

      # fun nonsense
      # youtube-dl
      pandoc
      d2

      # keybase

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
    ] ++ distroSpecific;
}
