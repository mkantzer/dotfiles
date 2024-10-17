# source / inspiration:
# https://git.pleasantprogrammer.com/thatsmydoing/nixos-config/src/ab8e8c5bae4004292538ff5503ebcca96c0c55a9/includes/kubernetes/default.nix

{ config, pkgs, lib, ... }:
let
  buildBinPackage = options: pkgs.stdenv.mkDerivation {
    inherit (options) pname version;
    src = pkgs.fetchurl {
      inherit (options) url sha256;
    };
    unpackPhase = if options ? "binPath" then "unpackFile $src" else ":";
    installPhase =
      let
        binPath = if options ? "binPath" then options.binPath else "$src";
        completionCommands =
          if options ? hasCompletion then ''
            $out/bin/${options.pname} completion bash > $out/share/bash-completion/completions/${options.pname}
            $out/bin/${options.pname} completion zsh > $out/share/zsh/site-functions/_${options.pname}
            $out/bin/${options.pname} completion fish > $out/share/fish/completions/${options.pname}.fish
          '' else "";
      in
      ''
        mkdir -p $out/bin $out/share/bash-completion/completions $out/share/zsh/site-functions $out/share/fish/completions
        cp ${binPath} $out/bin/${options.pname}
        chmod +x $out/bin/${options.pname}
        ${completionCommands}
      '';
  };

  # NOTE: GOTTA FIX UP FOR NON-DARWIN!
  # argocd = buildBinPackage rec {
  #   pname = "argocd";
  #   version = "2.9.2";
  #   url = "https://github.com/argoproj/argo-cd/releases/download/v${version}/argocd-darwin-arm64";
  #   sha256 = "sha256-xSlonn17+hQEzxsxmlKPBuSziptNpRDL4cFKsycIIiQ=";
  #   hasCompletion = true;
  # };
  # helm = buildBinPackage rec {
  #   pname = "helm";
  #   version = "3.0.0";
  #   url = "https://get.helm.sh/helm-v${version}-linux-amd64.tar.gz";
  #   sha256 = "10e1fdcca263062b1d7b2cb93a924be1ef3dd6c381263d8151dd1a20a3d8c0dc";
  #   binPath = "linux-amd64/helm";
  #   hasCompletion = true;
  # };
  # eksctl = buildBinPackage rec {
  #   pname = "eksctl";
  #   version = "0.10.2";
  #   url = "https://github.com/weaveworks/eksctl/releases/download/${version}/eksctl_Linux_amd64.tar.gz";
  #   sha256 = "d3e70cd101ca4756ca9b2fbbeb6edcf580ae4783d80004c8847fa177e7d32e03";
  #   binPath = "eksctl";
  #   hasCompletion = true;
  # };
  # k9s = buildBinPackage rec {
  #   pname = "k9s";
  #   version = "0.9.3";
  #   url = "https://github.com/derailed/k9s/releases/download/${version}/k9s_${version}_Linux_x86_64.tar.gz";
  #   sha256 = "af3608517684e59de94573ad123486edd6f392c8c319ddbde6223d3ac2d37bd9";
  #   binPath = "k9s";
  # };
  # kustomize = buildBinPackage rec {
  #   pname = "kustomize";
  #   version = "3.2.1";
  #   url = "https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize/v${version}/kustomize_kustomize.v${version}_linux_amd64";
  #   sha256 = "a91b38778945e8a63fe70bc7522703a94c1d572d5dcee245e96647359e1fd04b";
  # };
  # kubectl-argo-rollouts = buildBinPackage rec {
  #   pname = "kubectl-argo-rollouts";
  #   version = "1.7.2";
  #   url = "https://github.com/argoproj/argo-rollouts/releases/download/v${version}/kubectl-argo-rollouts-linux-amd64";
  #   sha256 = "sha256-r36sZZO7ysTiGZYJleePaks7seaqR+FaSVvrGk0toXc=";
  # };
  # velero = buildBinPackage rec {
  #   pname = "velero";
  #   version = "1.2.0";
  #   url = "https://github.com/vmware-tanzu/velero/releases/download/v${version}/velero-v${version}-linux-amd64.tar.gz";
  #   sha256 = "4080a37b487a859b5bba8391e965267cd0fe29cd67fd070b6f695fed45619e2c";
  #   binPath = "velero-v${version}-linux-amd64/velero";
  # };
  telepresence-oss = buildBinPackage rec {
    pname = "telepresence-oss";
    version = "2.20.0";
    url = "https://app.getambassador.io/download/tel2oss/releases/download/v${version}/telepresence-darwin-amd64";
    sha256 = "sha256-fYYHsvblFBDMWGzcjQbvz6JS0IUmjKoxYw9ZjIT4dow=";
  };
in
{
  home.packages = with pkgs;
    [
      telepresence-oss
      helmfile

      # kubectl
      # kubectx
      # kops
      # argocd
      # kubernetes-helm
      # eksctl
      # k9s
      # kustomize
      # kubectl-argo-rollouts
      # aws-iam-authenticator
      # velero
    ];
}
