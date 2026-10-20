{ pkgs, ... }:
{
  programs = {
    pay-respects.enable = true;

    bottom = {
      enable = true;
      settings.flags.regex = true;
    };

    bat = {
      enable = true;
      config = {
        style = "plain";
        paging = "never";
        theme = "TwoDark";
        tabs = "2";
        map-syntax = [ "*.cue:Go" ];
      };
    };

    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };

    htop = {
      enable = true;
      settings.show_program_path = true;
    };

    go.enable = true;

    kubecolor = {
      enable = true;
      enableAlias = true;
    };

    zoxide.enable = true;
  };

  home.packages = with pkgs; [
    coreutils
    moreutils
    tree
    dust # `du`
    eza # `ls`
    fd # `find`
    hyperfine
    mosh
    ripgrep
    tealdeer # `tldr`
    unrar
    wget
    xz
    shfmt

    dive # inspect docker image layers
    pre-commit
    skaffold
    tilt
    devspace
    go-task
    mkcert
    nss # certutil, used by mkcert
    fzf
    usql
    kubernetes-helm
    chart-testing
    kustomize
    krew
    kubectx
    kubecfg
    k9s
    kind
    kubectl
    yamllint
    shellcheck

    cue
    jq
    yq-go
    postgresql

    cachix
    comma # run software without installing it
    nix-tree
    nix-update
    nixpkgs-review
    nix-prefetch-github
    statix
  ];
}
