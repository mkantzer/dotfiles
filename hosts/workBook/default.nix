# Work Apple Silicon laptop
{
  my = {
    user.homeStateVersion = "25.11";

    homebrew.enable = true;
    fonts.enable = true;
    kitty.enable = true;
    firefox.enable = true;
    openscad.enable = true;
    arduino.enable = true;

    aws.enable = true;
    k8s.enable = true;
    workCli.enable = true;
  };

  # Set once at install time; never bump. See `darwin-rebuild changelog`.
  system.stateVersion = 6;
}
