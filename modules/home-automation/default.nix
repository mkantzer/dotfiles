{ config, lib, pkgs, ... }:
{
  imports = {
  		./home-assistant.nix
  		./homebridge.nix
  		./mosquitto.nix
  		./zwavejs2mqtt.nix
  };

  virtualisation.docker.enable = true;
}