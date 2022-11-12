{ config, pkgs, lib, ... }:

let
  interface = "wlan0";
  hostname = "homePi";
in
{
  imports = [
    "${fetchTarball {
        url = "https://github.com/NixOS/nixos-hardware/archive/936e4649098d6a5e0762058cb7687be1b2d90550.tar.gz" ;
        sha256 = "06g0061xm48i5w7gz5sm5x5ps6cnipqv1m483f8i9mmhlz77hvlw";
    }}/raspberry-pi/4"

    ../common/global
    ../common/users/mk5r.nix

    ../common/optional/fonts.nix
    ./services
  ];

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/NIXOS_SD";
      fsType = "ext4";
      options = [ "noatime" ];
    };
  };

  networking = {
    hostName = hostname;
  };

  environment.systemPackages = with pkgs; [ vim ];

  services.openssh.enable = true;

  users = {
    mutableUsers = false;
  };

  # Enable GPU acceleration
  hardware.raspberry-pi."4".fkms-3d.enable = true;

  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
    desktopManager.xfce.enable = true;
  };

  hardware.pulseaudio.enable = true;

  system.stateVersion = "21.11"; # Did you read the comment?
}
