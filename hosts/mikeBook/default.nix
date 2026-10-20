# Personal Apple Silicon laptop
{
  my = {
    user.homeStateVersion = "26.05";

    homebrew.enable = true;
    fonts.enable = true;
    kitty.enable = true;
    firefox.enable = true;
    openscad.enable = true;
    arduino.enable = true;
  };

  homebrew.casks = [ "steam" ];

  # Set once at install time; never bump. See `darwin-rebuild changelog`.
  system.stateVersion = 4;
}
