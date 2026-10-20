{
  config,
  lib,
  pkgs,
  ...
}:
{
  options.my.openscad.enable = lib.mkEnableOption "OpenSCAD";

  config = lib.mkIf config.my.openscad.enable {
    home-manager.users.${config.my.user.name}.home.packages = [ pkgs.openscad ];
  };
}
