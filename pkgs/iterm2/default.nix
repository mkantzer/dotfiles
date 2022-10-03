## Should be able to copy-cat spotifyd or yabai to actually make this work, ideally leveraging the plist thing




{ config, lib, pkgs,  ... }:
with lib;

let
  cfg = config.programs.iterm2

  format = pkgs.formats.plist { };
  configFile = format.generate "com.googlecode.iterm2.plist" {
  		# not sure what to actually put in here?
  };
in
{
  options = {
  		programs.iterm2 = {
  			enable = mkOption {
  	
  	}
  };

}