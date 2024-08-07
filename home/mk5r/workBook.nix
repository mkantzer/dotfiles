{ inputs, pkgs, ... }: {
  imports = [
    ./global
    ./features/packages
    ./features/iterm2
    ./features/kitty
  ];

  home.username = "mikekantzer";
}
