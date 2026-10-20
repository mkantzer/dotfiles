{ config, lib, ... }:
{
  options.my.firefox.enable = lib.mkEnableOption "Firefox";

  config = lib.mkIf config.my.firefox.enable {
    home-manager.users.${config.my.user.name}.programs.firefox.enable = true;
  };
}
