# System configuration for my work laptop
{ pkgs, inputs, outputs, ... }: {
  imports = [
    ../common/global-darwin
    ../common/users/mk5r.nix
  ];

  # Hostname
  networking.hostName = "mikeBook";

  system.stateVersion = 4; # Did you read the comment?
}
