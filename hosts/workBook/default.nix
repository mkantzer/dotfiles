# System configuration for my work laptop
{ pkgs, inputs, ... }: {
  imports = [


  ];

  # Hostname
  networking.hostName = "workBook";

  system.stateVersion = 4; # Did you read the comment?
}