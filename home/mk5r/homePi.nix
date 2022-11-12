{ inputs, pkgs, ... }: {
  imports = [ ./global
    ./features/pkgs-nixos
  ];
}