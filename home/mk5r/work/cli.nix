{ config
, lib
, pkgs
, ...
}: {

  programs.go.env.GOPRIVATE = [
    "github.com/LeagueApps/*"
  ];

  programs.git.settings.url."git@github.com:LeagueApps/".insteadOf = "https://github.com/LeagueApps/";

  home.packages = with pkgs; [
    # argocd
    argo-workflows
    argo-rollouts
    argocd

    awscli2
    # google-cloud-sdk
    (google-cloud-sdk.withExtraComponents [
      google-cloud-sdk.components.gke-gcloud-auth-plugin
      google-cloud-sdk.components.cloud-sql-proxy
    ])

    terragrunt
    # terraform     # This is managed by tfenv now!
    pandoc
    # d2
  ];
}
