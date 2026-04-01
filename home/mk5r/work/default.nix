{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./aws.nix
    ./cli.nix
    ./k8s.nix
    ./arduino.nix
  ];
}
