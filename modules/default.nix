# The base configuration
#
# The default module includes basic system utilities and configuration that
# should be present on all systems.

{ config, pkgs, lib, ... }:

{
  # boot.loader.timeout = 1;
  # powerManagement.cpuFreqGovernor = "schedutil";

  nix = {
    package = pkgs.nixFlakes;
    # useDaemon = true;
    extraOptions = ''
      experimental-features = nix-command flakes
      keep-outputs = true
      keep-derivations = true
    '' + lib.optionalString (pkgs.system == "aarch64-darwin") ''
      extra-platforms = x86_64-darwin aarch64-darwin
    '';
    settings.auto-optimise-store = true;
    gc = {
      automatic = true;
      options = "--delete-older-than 32d";
    };
  };

  services.nix-daemon.enable = true;

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages =
    let
      zinfo = pkgs.callPackage ../pkgs/zinfo { };
    in
    with pkgs; [
      terminal-notifier
      exa
      fd
      ouch
      ripgrep
      zinfo
    ];

  # environment.defaultPackages = [ pkgs.helix ];

  environment.shells = with pkgs; [
    bashInteractive
    fish
    zsh
  ];

  environment.variables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    SHELL = "${pkgs.fish}/bin/fish";
  };


  # Make Fish the default shell
  # users.defaultUserShell = pkgs.fish;
  # Since it's not possible to declare default shell in macOS, run this command after build
  system.activationScripts.postActivation.text = ''sudo chsh -s ${pkgs.fish}/bin/fish'';



  environment.shellAliases = {
    l = "exa --icons --color=always";
    ll = "l -aalg";
    nix-query = "nix-store -q --references /run/current-system/sw | rg -v man | sed 's/^[^-]*-//g' | sed 's/-[0-9].*//g' | rg -v '^nix' | sort -u | $PAGER";
  };

  # services.getty = {
  #   greetingLine = "NixOS ${builtins.substring 0 5 config.system.nixos.label} (\\m) - \\l";
  #   helpLine = lib.mkForce "";
  # };
  # users.motd = "\nHello, sailor!\n\n";
}
