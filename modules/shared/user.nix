{ config, lib, ... }:
let
  cfg = config.my.user;
in
{
  options.my.user = {
    name = lib.mkOption {
      type = lib.types.str;
      default = "mk5r";
      description = "Primary user. Owns the home-manager config and the per-feature home settings.";
    };
    sshKey = lib.mkOption {
      type = lib.types.str;
      default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF9K7mYtXECI6LD8iptulJC3eXZL4fE+M1M24UftlcnX";
      description = "Public half of the primary user's 1Password SSH key. Authorizes SSH logins and signs git commits.";
    };
    homeStateVersion = lib.mkOption {
      type = lib.types.str;
      example = "26.05";
      description = "home-manager release at first install on this host. Never change it afterwards.";
    };
  };

  config.home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    # Move pre-existing dotfiles aside instead of failing activation.
    backupFileExtension = "hm-bak";
    users.${cfg.name} = {
      imports = [ ../home ];
      home.stateVersion = cfg.homeStateVersion;
    };
  };
}
