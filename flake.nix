{
  description = "Nix-based SON-IX related infrastructure";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
    flake-utils.url = "github:numtide/flake-utils";
    base-profile.url = "git+ssh://git@git.wobcom.de/wobcom/nix/base-profile.git?ref=master-23.05";
    base-profile.flake = false;
    colmena.url = "github:zhaofengli/colmena/stable";
    colmena.inputs.nixpkgs.follows = "nixpkgs";
    nixpkgs-ixp-manager.url = "github:NetaliDev/nixpkgs/ixp-manager";
  };

  outputs = { self, nixpkgs, colmena, flake-utils, ... }@inputs: {

    colmena = import ./hive.nix inputs;
    nixosConfigurations = (colmena.lib.makeHive self.outputs.colmena).nodes;

  } // flake-utils.lib.eachDefaultSystem (system: let
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.default = pkgs.mkShell {
      name = "sonixify-shell";
      buildInputs = [
        pkgs.sops
        pkgs.colmena
      ];
    };

  });
}
