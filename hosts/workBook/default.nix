# System configuration for my work laptop
{ pkgs, inputs, outputs, ... }: {
  imports = [
    ../common/global-darwin
    ../common/users/mkantzer.nix
  ];

  # Hostname
  networking.hostName = "workBook";

  system.stateVersion = 4; # Did you read the comment?
}
