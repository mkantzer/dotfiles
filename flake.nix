{
  description = "My Nix System Configurations";

  inputs = {
    # Nix ecosystem
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.11";
    # systems.url = "github:nix-systems/default";

    hardware.url = "github:nixos/nixos-hardware";
    nix-colors.url = "github:misterio77/nix-colors";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    systems,
    home-manager,
    nix-darwin,
    ...
  } @ inputs: let
    inherit (self) outputs;
    lib = nixpkgs.lib // home-manager.lib;
    forEachSystem = f: lib.genAttrs (import systems) (system: f pkgsFor.${system});
    pkgsFor = lib.genAttrs (import systems) (
      system:
        import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        }
    );
  in {
    inherit lib;
    # Modules are usually things you'll later upstream. Prob not gonna use these.
    # NOT for my own custom config.
    nixosModules = import ./modules/nixos;
    homeManagerModules = import ./modules/home-manager;

    # Your custom packages and modifications, exported as overlays
    overlays = import ./overlays {inherit inputs outputs;};

    # Your custom packages, accessible through 'nix build', 'nix shell', etc
    # packages = forEachSystem (pkgs: import ./pkgs {inherit pkgs;});

    formatter = forEachSystem (pkgs: pkgs.alejandra);
    # devShells = forEachSystem (pkgs: import ./shell.nix {inherit pkgs;});

    # NixOS configuration entrypoint
    # Available through 'nixos-rebuild --flake .#your-hostname'
    nixosConfigurations = {
      # homePi = lib.nixosSystem {
      #   modules = [./hosts/homePi];
      #   specialArgs = {inherit inputs outputs;};
      # };
      # mikeBox = lib.nixosSystem {
      #   modules = [./hosts/mikeBox];
      #   specialArgs = {inherit inputs outputs;};
      # };
      tvBox = lib.nixosSystem {
        modules = [./hosts/tvBox];
        specialArgs = {inherit inputs outputs;};
      };
    };

    darwinConfigurations = {
      workbook-mk5r = nix-darwin.lib.darwinSystem {
        modules = [./hosts/workBook];
        specialArgs = {inherit inputs outputs;};
      };
      mikebook = nix-darwin.lib.darwinSystem {
        modules = [./hosts/mikeBook];
        specialArgs = {inherit inputs outputs;};
      };
    };

    homeConfigurations = {
      "mk5r@workbook-mk5r" = lib.homeManagerConfiguration {
        modules = [./home/mk5r/workbook-mk5r.nix];
        pkgs = pkgsFor.aarch64-darwin;
        extraSpecialArgs = {inherit inputs outputs;};
      };
      "mk5r@mikeBook" = lib.homeManagerConfiguration {
        modules = [./home/mk5r/mikeBook.nix];
        pkgs = pkgsFor.aarch64-darwin;
        extraSpecialArgs = {inherit inputs outputs;};
      };
      "mk5r@tvBox" = lib.homeManagerConfiguration {
        modules = [./home/mk5r/tvBox.nix];
        pkgs = pkgsFor.x86_64-linux;
        extraSpecialArgs = {inherit inputs outputs;};
      };
    };
  };
}
