# Always imported on NixOS hosts (see mkNixos in flake.nix).
{ config, pkgs, ... }:
{
  imports = [
    ../shared
    ../features
    ./locale.nix
  ];

  users.users.${config.my.user.name} = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.fish;
  };

  services.openssh.settings = {
    PasswordAuthentication = false;
    KbdInteractiveAuthentication = false;
  };

  nix = {
    settings.trusted-users = [
      "root"
      "@wheel"
    ];
    gc.dates = "weekly";
  };

  environment = {
    enableAllTerminfo = true;
    systemPackages = [ pkgs.wireguard-tools ];
  };
}
