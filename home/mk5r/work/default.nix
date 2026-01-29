{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./aws.nix
  ];
}
