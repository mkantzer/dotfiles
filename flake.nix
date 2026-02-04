{
  description = "My NixOS flake configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    systems.url = "github:nix-systems/default";
    # hardware.url = "github:nixos/nixos-hardware";
    nix-colors.url = "github:misterio77/nix-colors";

    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    darwin,
    systems,
    nix-colors,
    nix-homebrew,
    ...
  } @ inputs: let
    inherit (nixpkgs.lib) filterAttrs traceVal;
    inherit (builtins) mapAttrs elem;
    inherit (self) outputs;
    notBroken = x: !(x.meta.broken or false);
    # supportedSystems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
    # forAllSystems = nixpkgs.lib.genAttrs supportedSystems;

    lib = nixpkgs.lib // home-manager.lib // darwin.lib;
    forEachSystem = f: lib.genAttrs (import systems) (system: f pkgsFor.${system});
    pkgsFor = lib.genAttrs (import systems) (
      system:
        import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        }
    );
  in {
    # Modules are usually things you'll later upstream. Prob not gonna use these.
    # NOT for my own custom config??
    darwinModules = import ./modules/darwin;
    nixosModules = import ./modules/nixos;
    homeManagerModules = import ./modules/home-manager;

    # Your custom packages and modifications, exported as overlays
    overlays = import ./overlays {inherit inputs outputs;};

    # Your custom packages, accessible through 'nix build', 'nix shell', etc
    packages = forEachSystem (pkgs: import ./pkgs {inherit pkgs;});

    formatter = forEachSystem (pkgs: pkgs.alejandra);

    # devShells = forAllSystems (system: {
    #   default = import ./shell.nix { pkgs = legacyPackages.${system}; };
    # });

    darwinConfigurations = {
      mikeBook = darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        specialArgs = {inherit inputs outputs;};
        modules = [
          ./hosts/mikeBook
          home-manager.darwinModules.home-manager
          nix-homebrew.darwinModules.nix-homebrew
        ];
      };

      workBook = darwin.lib.darwinSystem {
        pkgs = pkgsFor.aarch64-darwin;
        specialArgs = {inherit inputs outputs;};
        modules = [
          ./hosts/workBook
          home-manager.darwinModules.home-manager
          nix-homebrew.darwinModules.nix-homebrew
        ];
      };
    };

    # nixosConfigurations = {
    #   # homePi = nixpkgs.lib.nixosSystem {
    #   #   specialArgs = {inherit inputs outputs;};
    #   #   modules = [
    #   #     ./hosts/homePi
    #   #     home-manager.nixosModules.home-manager
    #   #   ];
    #   # };

    #   media = nixpkgs.lib.nixosSystem {
    #     pkgs = pkgsFor.x86_64-linux;
    #     specialArgs = {inherit inputs outputs;};
    #     modules = [
    #       ./hosts/media
    #       home-manager.nixosModules.home-manager
    #     ];
    #   };
    # };
  };
}
