{
  config,
  lib,
  pkgs,
  ...
}:
{
  options.my.k8s.enable = lib.mkEnableOption "extra Kubernetes tooling (helmfile, kubectl shell helpers)";

  config = lib.mkIf config.my.k8s.enable {
    home-manager.users.${config.my.user.name} = {
      programs.fish.functions = {
        kcy = {
          body = "kubectl $argv -o yaml | yq ";
          description = "Kubectl w/ -o yaml | yq";
          wraps = "kubectl";
        };
        kce = {
          body = "kubectl exec -it $argv -- /bin/bash";
          description = "kubectl exec -it <pod> -- /bin/bash";
          wraps = "kubectl exec -it";
        };
      };

      programs.zsh = {
        siteFunctions = {
          kcy = ''kubectl "$@" -o yaml | yq'';
          kce = ''kubectl exec -it "$@" -- /bin/bash'';
        };
        initContent = "compdef kcy=kubectl";
      };

      home.packages = [ pkgs.helmfile ];
    };
  };
}
