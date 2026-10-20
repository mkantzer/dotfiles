# AWS credentials served from 1Password:
# https://tenmilesquare.com/resources/security/how-to-use-1password-to-securely-store-your-aws-credentials/
{
  config,
  lib,
  pkgs,
  ...
}:
let
  # credential_process can't pass arguments reliably (terraform / the Go SDK break), so the
  # vault and item are fixed per script.
  personalAdminCreds = pkgs.writeShellScript "op-cred-helper-personal-admin" ''
    vault="Personal"
    secret_id="Personal AWS - Mike"

    cat <<END | op inject
    {
      "Version": 1,
      "AccessKeyId": "{{ op://''${vault}/''${secret_id}/access key id }}",
      "SecretAccessKey": "{{ op://''${vault}/''${secret_id}/secret access key }}"
    }
    END
  '';
in
{
  options.my.aws.enable = lib.mkEnableOption "the AWS CLI with 1Password-backed credentials";

  config = lib.mkIf config.my.aws.enable {
    home-manager.users.${config.my.user.name}.programs = {
      awscli = {
        enable = true;
        settings."profile personal-admin" = {
          region = "us-east-1";
          credential_process = "${personalAdminCreds}";
        };
      };

      fish.shellAliases.aws-p = "export AWS_PROFILE=personal-admin";
    };
  };
}
