# This file (and the global directory) holds config that i use on all hosts
{ lib, inputs, outputs, ... }:
{
  imports = [
    ../global
    ./system.nix
    ./homebrew.nix
  ] ++ (builtins.attrValues outputs.darwinModules);

  # Fix for mid-build `cannot-link` problems
  nix.settings.auto-optimise-store = false;
}