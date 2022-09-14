{ pkgs, ... }:

{
  imports = [
    ../../modules
    ../../modules/darwin-settings
    ../../modules/bluetooth.nix
    ../../modules/laptop.nix

    ./users/mk5r.nix
  ];

  # Set your time zone.
  time.timeZone = "America/New-York";

  # Hostname
  networking.hostName = "mikeBook";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  #environment.systemPackages = with pkgs; [];

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  services.mosh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  system.stateVersion = "21.11"; # Did you read the comment?
}
