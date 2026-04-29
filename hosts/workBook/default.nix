# System configuration for my work laptop
{ pkgs
, inputs
, outputs
, ...
}: {
  imports = [
    ../common/global
    ../common/global-darwin
    ../common/optional/fonts.nix
  ];

  # Hostname
  networking.hostName = "workBook";

  # This option defines the first version of NixOS you have installed on this particular machine, and is used to maintain compatibility between versions.
  # For example, if NixOS version XX.YY ships with AwesomeDB version N by default, and is then upgraded to version XX.YY+1, which ships AwesomeDB version N+1,
  # the existing databases may no longer be compatible, causing applications to fail, or even leading to data loss.
  #
  # The stateVersion mechanism avoids this situation by making the default version of such packages conditional on the first version of NixOS you’ve installed,
  # instead of simply always using the latest one.
  #
  # Note that this generally only affects applications that can’t upgrade their data automatically - applications and services supporting automatic
  # migrations will remain on latest versions when you upgrade.
  # Most users should never change this value after the initial install, for any reason, even if you’ve upgraded your system to a new NixOS release.
  # This value does not affect the Nixpkgs version your packages and OS are pulled from, so changing it will not upgrade your system.
  # This value being lower than the current NixOS release does not mean your system is out of date, out of support, or vulnerable.
  # Do not change this value unless you have manually inspected all the changes it would make to your configuration, and migrated your data accordingly.
  system.stateVersion = 6;

  # nix-darwin does something weird with group ids, so the nix build group
  # is 350 instead of 30000.
  ids.gids.nixbld = 350;

  # User Management
  users.users.mk5r = {
    name = "mk5r";
    home = "/Users/mk5r";
  };
  home-manager.users.mk5r = {
    imports = [
      ../../home/mk5r/global
      ../../home/mk5r/work
    ];

    # This value determines the NixOS release from which the default
    # settings for stateful data, like file locations and database versions
    # on your system were taken. It‘s perfectly fine and recommended to leave
    # this value at the release version of the first install of this system.
    # Before changing this value read the documentation for this option
    # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
    home.stateVersion = "25.11"; # Did you read the comment?
  };


  # # Just some arduino stuff
  # homebrew = {
  #   taps = [
  #     "ARMmbed/homebrew-formulae"
  #   ];

  #   brews = [
  #     "open-ocd"
  #     "arm-none-eabi-gcc"
  #     "libtool"
  #     "automake"
  #     "libusb"
  #     "aclocal"
  #     "texinfo"
  #     "pkg-config"
  #     "capstone"
  #     "gdb"
  #   ];
  # };
}
