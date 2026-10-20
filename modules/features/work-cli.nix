{
  config,
  lib,
  pkgs,
  ...
}:
{
  options.my.workCli.enable = lib.mkEnableOption "work CLIs and LeagueApps settings (Argo, gcloud, terragrunt, pandoc, GOPRIVATE, git SSH rewrite, `tcs`)";

  config = lib.mkIf config.my.workCli.enable {
    home-manager.users.${config.my.user.name} = {
      programs = {
        go.env.GOPRIVATE = [ "github.com/LeagueApps/*" ];
        git.settings.url."git@github.com:LeagueApps/".insteadOf = "https://github.com/LeagueApps/";
        fish.shellAliases.tcs = "pushd ~/workspace/leagueapps/local-k8s ; gcloud auth login --update-adc ; task cluster:start ; popd";
      };

      home.packages = with pkgs; [
        argo-workflows
        argo-rollouts
        argocd

        (google-cloud-sdk.withExtraComponents [
          google-cloud-sdk.components.gke-gcloud-auth-plugin
          google-cloud-sdk.components.cloud-sql-proxy
        ])

        terragrunt
        pandoc
      ];
    };
  };
}
