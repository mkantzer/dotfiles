{ inputs, pkgs, ... }: {
  imports = [ ./global
    ./features/pkgs-darwin
  ];
}