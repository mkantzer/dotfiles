# System config shared by nix-darwin and NixOS. Always imported.
{
  imports = [
    ./fish.nix
    ./nix.nix
    ./sshd.nix
    ./user.nix
    ./zsh.nix
  ];
}
