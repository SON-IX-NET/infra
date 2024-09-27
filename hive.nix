inputs:

{
  meta = {
    description = "Nix-based SON-IX related infrastructure";

    nixpkgs = import inputs.nixpkgs {
      system = "x86_64-linux";
      overlays = [
        (final: prev: { inherit (import inputs.nixpkgs-ixp-manager { system = prev.system; }) ixp-manager; })
        (final: prev: import ./packages final prev)
      ];
    };

    specialArgs = { inherit inputs; };
  };

  defaults = ./profiles/common;

  lhvs0007-ixp-manager = ./hosts/ixp-manager/dev/lhvs0007-ixp-manager;
  ixp-manager = ./hosts/ixp-manager/ixp-manager;

  route-server-cactus = ./hosts/route-server/cactus;
}
