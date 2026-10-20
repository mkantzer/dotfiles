# Core home-manager config, applied to my.user.name on every host (see ../shared/user.nix).
# Plain home-manager modules: options here are home-manager's, not nix-darwin's or NixOS's.
{
  imports = [
    ./cli.nix
    ./fish.nix
    ./git.nix
    ./ssh.nix
    ./vim.nix
    ./zsh.nix
  ];

  programs.home-manager.enable = true;
}
