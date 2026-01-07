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
    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    # systems,
    home-manager,
    darwin,
    ...
  } @ inputs: let
    # Supported systems for your flake packages, shell, etc.
    systems = [
      "aarch64-linux"
      # "i686-linux"
      "x86_64-linux"
      "aarch64-darwin"
      "x86_64-darwin"
    ];
    # This is a function that generates an attribute by calling a function you
    # pass to it, with each system as an argument
    forAllSystems = nixpkgs.lib.genAttrs systems;
  in {
    # Your custom packages
    # Accessible through 'nix build', 'nix shell', etc
    packages = forAllSystems (system: import ./pkgs nixpkgs.legacyPackages.${system});
    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);

    # Your custom packages and modifications, exported as overlays
    overlays = import ./overlays {inherit inputs;};

    # NOTE: I'm not using modules (at least for now); but I'm leaving it as a reference back.
    # They're generally for things you'd upstream.
    nixosModules = import ./modules/nixos;
    homeManagerModules = import ./modules/home-manager;

    # NixOS configuration entrypoint
    # Available through 'nixos-rebuild --flake .#your-hostname'
    nixosConfigurations = {
      # homePi = nixpkgs.lib.nixosSystem {
      #   specialArgs = { inherit inputs outputs };
      #   modules = [./hosts/homePi];
      # };
      # mikeBox = nixpkgs.lib.nixosSystem {
      #   specialArgs = { inherit inputs outputs };
      #   modules = [./hosts/mikeBox];
      # };
      # tvBox  = nixpkgs.lib.nixosSystem {
      #   specialArgs = { inherit inputs outputs };
      #   modules = [./hosts/tvBox];
      # };
    };

    darwinConfigurations = {
    };
  };
}
