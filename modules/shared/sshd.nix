# SSH server on every host, key-only (password logins are disabled per platform in
# ../darwin and ../nixos). Keys are served by 1Password on the connecting machine.
{ config, ... }:
{
  services.openssh.enable = true;

  users.users.${config.my.user.name}.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF9K7mYtXECI6LD8iptulJC3eXZL4fE+M1M24UftlcnX"
  ];
}
