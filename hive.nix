inputs:

{
  meta = {
    description = "Nix-based SON-IX related infrastructure";

    nixpkgs = import inputs.nixpkgs {
      system = "x86_64-linux";
      overlays = [];
    };

    specialArgs = { inherit inputs; };
  };

  defaults = ./profiles/common;

  lhvs0007-ixp-manager = ./hosts/ixp-manager/dev/lhvs0007-ixp-manager;
}
