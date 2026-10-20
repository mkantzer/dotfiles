{
  description = "nix-darwin, NixOS and home-manager configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    darwin = {
      url = "github:nix-darwin/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
  };

  outputs =
    {
      nixpkgs,
      darwin,
      home-manager,
      nix-homebrew,
      ...
    }@inputs:
    let
      inherit (nixpkgs) lib;
      forAllSystems = lib.genAttrs [
        "aarch64-darwin"
        "x86_64-darwin"
        "aarch64-linux"
        "x86_64-linux"
      ];

      # The attribute name in darwinConfigurations/nixosConfigurations must match
      # the hostname, so `--flake .` picks the right host once it is set.
      mkDarwin =
        hostname: system:
        darwin.lib.darwinSystem {
          specialArgs = { inherit inputs; };
          modules = [
            {
              nixpkgs.hostPlatform = system;
              networking.hostName = hostname;
            }
            home-manager.darwinModules.home-manager
            nix-homebrew.darwinModules.nix-homebrew
            ./modules/darwin
            ./hosts/${hostname}
          ];
        };

      mkNixos =
        hostname: system:
        lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            {
              nixpkgs.hostPlatform = system;
              networking.hostName = hostname;
            }
            home-manager.nixosModules.home-manager
            ./modules/nixos
            ./hosts/${hostname}
          ];
        };
    in
    {
      darwinConfigurations = {
        mikeBook = mkDarwin "mikeBook" "aarch64-darwin";
        workBook = mkDarwin "workBook" "aarch64-darwin";
      };

      # e.g. someBox = mkNixos "someBox" "x86_64-linux";
      nixosConfigurations = { };

      formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.nixfmt);

      devShells = forAllSystems (system: {
        default = import ./shell.nix { pkgs = nixpkgs.legacyPackages.${system}; };
      });
    };
}
