{
  config,
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    argocd
    argo-workflows
    argo-rollouts

    awscli2
    # google-cloud-sdk
    (google-cloud-sdk.withExtraComponents [
      google-cloud-sdk.components.gke-gcloud-auth-plugin
    ])

    terragrunt
    # terraform     # This is managed by tfenv now!
    pandoc
    d2
  ];
}
