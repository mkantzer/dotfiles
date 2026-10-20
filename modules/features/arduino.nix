{
  config,
  lib,
  pkgs,
  ...
}:
{
  options.my.arduino.enable = lib.mkEnableOption "Arduino and microcontroller tooling";

  config = lib.mkIf config.my.arduino.enable {
    home-manager.users.${config.my.user.name}.home.packages = with pkgs; [
      bossa
      tinygo
      arduino-cli
      mpremote
      esptool
      espflash
    ];
  };
}
