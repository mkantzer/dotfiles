{
  imports = [
    # ./binary-cache.nix
    # ./files-server.nix
    # ./git-remote.nix
    # ./headscale.nix
    # ./hydra.nix
    # ./mail.nix
    # ./nginx.nix
    # ./radicale.nix
    # ./website.nix

    # ./cgit
  ];

  virtualisation.docker.enable = true;
}
