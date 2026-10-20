{ config, pkgs, ... }:
let
  # https://developer.1password.com/docs/ssh/get-started/#step-4-configure-your-ssh-or-git-client
  agentSock =
    if pkgs.stdenv.hostPlatform.isDarwin then
      "${config.home.homeDirectory}/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
    else
      "${config.home.homeDirectory}/.1password/agent.sock";
in
{
  home.sessionVariables.SSH_AUTH_SOCK = agentSock;

  programs.ssh = {
    enable = true;
    extraConfig = ''
      IdentityAgent "${agentSock}"
    '';
    enableDefaultConfig = false;
    settings."*" = {
      forwardAgent = false;
      addKeysToAgent = "yes";
      compression = false;
      serverAliveInterval = 0;
      serverAliveCountMax = 3;
      hashKnownHosts = false;
      userKnownHostsFile = "~/.ssh/known_hosts";
      controlMaster = "no";
      controlPersist = "no";
    };
  };
}
