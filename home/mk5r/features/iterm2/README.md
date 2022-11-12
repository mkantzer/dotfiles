Note: the JSON files are not used, they're here "just in case"

Another note: Might do something like:

```
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
```

To remove from a mostly-hardcoded string into nix. Probably don't need to do that though.