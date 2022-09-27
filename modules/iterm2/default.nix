{ config, lib, pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.iterm2
  ];
}