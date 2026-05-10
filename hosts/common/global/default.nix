# This file (and the global directory) holds config that i use on all hosts
{
  lib,
  inputs,
  outputs,
  ...
}: {
  imports = [
    ./fish.nix
    ./nix.nix
  ];

  environment = {};
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
}
