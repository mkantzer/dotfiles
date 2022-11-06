{
  description = "My NixOS flake configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-22.05";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
    home-manager-unstable = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };

    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };

    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hardware.url = "github:nixos/nixos-hardware";
    nix-colors.url = "github:misterio77/nix-colors";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, home-manager-unstable, darwin, agenix, ... }@inputs:
    let
      inherit (nixpkgs.lib) filterAttrs traceVal;
      inherit (builtins) mapAttrs elem;
      inherit (self) outputs;
      notBroken = x: !(x.meta.broken or false);
      supportedSystems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in
    rec {
      templates = import ./templates;
      darwinModules = import ./modules/darwin;
      nixosModules = import ./modules/nixos;
      homeManagerModules = import ./modules/home-manager;
      overlays = import ./overlays;

      legacyPackages = forAllSystems (system:
        import nixpkgs {
          inherit system;
          # overlays = with overlays; [ additions wallpapers modifications ];
          config.allowUnfree = true;
        }
      );

      packages = forAllSystems (system:
        import ./pkgs { pkgs = legacyPackages.${system}; }
      );
      devShells = forAllSystems (system: {
        default = import ./shell.nix { pkgs = legacyPackages.${system}; };
      });


      darwinConfigurations = rec {
        workBook = darwin.lib.darwinSystem {
          pkgs = legacyPackages."aarch64-darwin";
          specialArgs = { inherit inputs outputs; };
          modules = [ ./hosts/workBook ];
        };

        mikeBook = darwin.lib.darwinSystem {
          pkgs = legacyPackages."x86_64-darwin";
          specialArgs = { inherit inputs outputs; };
          modules = [ ./hosts/mikeBook ];
        };
      };

      nixosConfigurations = {
        homePi = nixpkgs.lib.nixosSystem {
          pkgs = legacyPackages."aarch64-linux";
          specialArgs = { inherit inputs outputs; };
          modules = [ ./hosts/homePi ];
        };
      };

      homeConfigurations = {
        "mk5r@workBook" =home-manager.lib.homeManagerConfiguration {
          pkgs = legacyPackages."aarch64s-darwin";
          extraSpecialArgs = { inherit inputs outputs; };
          modules = [ ./home/mk5r/workBook.nix ];
        };
        "mk5r@mikeBook" =home-manager.lib.homeManagerConfiguration {
          pkgs = legacyPackages."x86_64-darwin";
          extraSpecialArgs = { inherit inputs outputs; };
          modules = [ ./home/mk5r/mikeBook.nix ];
        };
        "mk5r@homePi" = home-manager.lib.homeManagerConfiguration {
          pkgs = legacyPackages."aarch64-linux";
          extraSpecialArgs = { inherit inputs outputs; };
          modules = [ ./home/mk5r/homePi.nix ];
        };
        # For easy bootstraping from a nixos live usb
        "nixos@nixos" = home-manager.lib.homeManagerConfiguration {
          pkgs = legacyPackages."x86_64-linux";
          extraSpecialArgs = { inherit inputs outputs; };
          modules = [ ./home/misterio/generic.nix ];
        };
      };
    };
}
