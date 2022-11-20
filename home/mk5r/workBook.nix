{ inputs, pkgs, ... }: {
  imports = [ ./global
    ./features/pkgs-darwin
    ./features/iterm2
    ./features/darwin-sound
  ];
}