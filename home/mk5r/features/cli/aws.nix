#  Primarily for allowing AWS authentication via 1password
# https://tenmilesquare.com/resources/security/how-to-use-1password-to-securely-store-your-aws-credentials/

{ config, lib, pkgs, ... }:

{
  home.file.".aws/op-cred-helper-personal-admin.sh" = {
    executable = true;
    text = ''
      #!/bin/bash

      # Can't actually provide these as arguments: it breaks when terrafrom / golang sdk tries to call it.
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
  };

  home.file.".aws/config" = {
    text = ''
    [profile personal-admin]
    region = us-east-1
    credential_process = "/Users/${config.home.username}/.aws/op-cred-helper-personal-admin.sh"
    '';
  };
}
