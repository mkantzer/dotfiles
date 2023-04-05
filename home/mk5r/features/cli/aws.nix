#  Primarily for allowing AWS authentication via 1password
# https://tenmilesquare.com/resources/security/how-to-use-1password-to-securely-store-your-aws-credentials/

{ config, lib, pkgs, ... }:

{
  home.file.".aws/op-cred-helper.sh" = {
    executable = true;
    text = ''
      #!/bin/bash

      vault="$1"
      secret_id="$2"

      cat <<END | op inject
      {
        "Version": 1,
        "AccessKeyId": "{{ op://${vault}/${secret_id}/aws_access_key_id }}",
        "SecretAccessKey": "{{ op://${vault}/${secret_id}/aws_secret_access_key }}"
      }
      END
    '';
  };

  home.file.".aws/config" = {
    text = ''
    [personal-admin]
    region = us-east-1
    credential_process = "/Users/${config.home.username}/.aws/op-cred-helper.sh" "Personal" "Personal AWS - Mike"
    '';
  };
}
