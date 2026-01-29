# System configuration for my work laptop
{
  pkgs,
  inputs,
  outputs,
  ...
}: {
  imports = [
    ../common/global
    ../common/global-darwin
    ../common/optional/fonts.nix

    ../../home/mk5r/global
  ];

  # Hostname
  networking.hostName = "workBook";
  system.stateVersion = 6;
}
