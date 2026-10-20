# Always imported on nix-darwin hosts (see mkDarwin in flake.nix).
{ config, ... }:
let
  user = config.my.user.name;
in
{
  imports = [
    ../shared
    ../features
    ./homebrew.nix
    ./system.nix
  ];

  system.primaryUser = user;
  users.users.${user}.home = "/Users/${user}";

  services.openssh.extraConfig = ''
    PasswordAuthentication no
    KbdInteractiveAuthentication no
  '';

  nix = {
    settings.trusted-users = [
      "root"
      "@admin"
    ];
    gc.interval = {
      Weekday = 0;
      Hour = 2;
      Minute = 0;
    };
  };
}
