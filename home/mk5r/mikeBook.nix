{ inputs, pkgs, ... }: {
  imports = [
    ./global
    ./features/packages
    ./features/iterm2
    ./features/kitty
    ./features/darwin-mosh
  ];
}
