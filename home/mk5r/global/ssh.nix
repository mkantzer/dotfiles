{pkgs, ...}: {
  # home.file.".ssh/authorized_keys" = {
  #   enable = true;
  #   executable = false;
  #   text = ''
  #     ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF9K7mYtXECI6LD8iptulJC3eXZL4fE+M1M24UftlcnX mbkantzer@gmail.com
  #     ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIFnW0M2ZOK4/q5zQgMb03Cvq+DkVGaOEcqbozJXbVWh
  #   '';
  # };

  programs.ssh = {
    enable = true;
    # See in programs.fish.shellInit : set SSH_AUTH_SOCK
    # https://developer.1password.com/docs/ssh/get-started/#step-4-configure-your-ssh-or-git-client
    extraConfig =
      # TODO: if Darwin, instead create a symlink from the linux location to the Darwin one
      if pkgs.stdenv.isDarwin
      # https://developer.1password.com/docs/ssh/get-started/#step-4-configure-your-ssh-or-git-client
      then ''
        IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
      ''
      else ''
        IdentityAgent "~/.1password/agent.sock"
      '';
    enableDefaultConfig = false;
    matchBlocks."*" = {
      forwardAgent = false;
      addKeysToAgent = "yes";
      compression = false;
      serverAliveInterval = 0;
      serverAliveCountMax = 3;
      hashKnownHosts = false;
      userKnownHostsFile = "~/.ssh/known_hosts";
      controlMaster = "no";
      # controlPath = “~/.ssh/master-%r@%n:%p”;
      controlPersist = "no";
    };
  };
}
