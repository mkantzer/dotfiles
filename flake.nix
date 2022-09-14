{
  description = "My NixOS flake configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-22.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager-unstable = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, home-manager-unstable, darwin, agenix, ... }: {
    formatter.x86_64-linux = nixpkgs-unstable.legacyPackages.x86_64-linux.nixpkgs-fmt;

    darwinConfigurations = {
      workBook = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        modules = [
          ./hosts/workBook/configuration.nix
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
          }
        ];
      };
    };

    nixosConfigurations = {
      homePi = nixpkgs-unstable.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/homePi/configuration.nix
          home-manager-unstable.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
          }
        ];
      };
      mikeBox = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/mikeBox/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
          }
        ];
      };
    };

    # homeConfigurations = {
    #   "lizzie@sparkle3" = home-manager-unstable.lib.homeManagerConfiguration {
    #     pkgs = nixpkgs-unstable.legacyPackages."x86_64-linux";
    #     modules = [
    #       ./hosts/sparkle3/lizzie/home.nix
    #     ];
    #   };
    # };
  };
}
