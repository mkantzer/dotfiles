{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [];

  programs.pay-respects = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    enableFishIntegration = true;
  };
}
