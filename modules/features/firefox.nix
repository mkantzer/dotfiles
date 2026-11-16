{
  config,
  lib,
  pkgs,
  ...
}:
{
  options.my.firefox.enable = lib.mkEnableOption "Firefox";

  config = lib.mkIf config.my.firefox.enable {
    home-manager.users.${config.my.user.name}.programs.firefox = {
      enable = true;
      # The nixpkgs build isn't signed by Mozilla, so macOS blocks it from the profile directory.
      # On macOS the Homebrew cask (../darwin/homebrew.nix) provides Firefox instead.
      package = lib.mkIf pkgs.stdenv.hostPlatform.isDarwin null;
    };
  };
}
