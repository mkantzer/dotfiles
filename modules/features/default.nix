# Opt-in features that work on both nix-darwin and NixOS.
# Each file declares `my.<name>.enable`; hosts switch them on.
# Platform-specific features live in ../darwin or ../nixos instead.
{
  imports = [
    ./arduino.nix
    ./aws.nix
    ./firefox.nix
    ./fonts.nix
    ./k8s.nix
    ./kitty.nix
    ./openscad.nix
    ./work-cli.nix
  ];
}
