{
  description = "Nix-based SON-IX related infrastructure";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
    base-profile.url = "git+ssh://git@git.wobcom.de/wobcom/nix/base-profile.git?ref=master-24.05";
    base-profile.flake = false;
    colmena.url = "github:zhaofengli/colmena/stable";
    colmena.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, colmena, flake-utils, ... }@inputs: {

    colmena = import ./hive.nix inputs;
    nixosConfigurations = (colmena.lib.makeHive self.outputs.colmena).nodes;

  } // flake-utils.lib.eachDefaultSystem (system: let
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    packages = rec {
      py-radix = pkgs.callPackage ./packages/py-radix.nix { };
      aggregate6 = pkgs.callPackage ./packages/aggregate6.nix { inherit py-radix; };
      arouteserver = pkgs.callPackage ./packages/arouteserver.nix { inherit aggregate6; };
      arouteserver-defaults = pkgs.callPackage ./packages/arouteserver-defaults.nix { inherit arouteserver; };
    };
    devShells.default = pkgs.mkShell {
      name = "sonixify-shell";
      buildInputs = [
        pkgs.sops
        pkgs.colmena
        pkgs.ssh-to-age
      ];
    };
  });
}
