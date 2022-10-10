{ pkgs, ... }:

{
  imports = [
    ../../modules
    ../../modules/fonts
    ../../modules/darwin-settings

    ./users/work-user.nix
  ];

  # Set your time zone.
  # time.timeZone = "America/New_York";

  # Hostname
  networking.hostName = "workBook";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  #environment.systemPackages = with pkgs; [];

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
  # programs.mosh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  system.stateVersion = 4; # Did you read the comment?
}
