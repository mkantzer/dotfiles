# System configuration for my work laptop
{
  pkgs,
  inputs,
  outputs,
  ...
}: {
  imports = [
    ../common/global-darwin
    ../common/optional/fonts.nix

    ../common/users/mk5r.nix
  ];

  # Hostname
  networking.hostName = "workbook-mk5r";
}
