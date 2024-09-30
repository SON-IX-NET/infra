inputs:

{
  meta = {
    description = "Nix-based SON-IX related infrastructure";

    nixpkgs = import inputs.nixpkgs {
      system = "x86_64-linux";
      overlays = [
        (final: prev: import ./packages final prev)
      ];
    };

    specialArgs = { inherit inputs; };
  };

  defaults = ./profiles/common;

  lhvs0007-ixp-manager = ./hosts/ixp-manager/dev/lhvs0007-ixp-manager;
  ihvs0546-ixp-manager = ./hosts/ixp-manager/ihvs0546-ixp-manager;

  route-server-cactus = ./hosts/route-server/cactus;
  route-server-tumbleweed = ./hosts/route-server/tumbleweed;

  lg-hydrangea = ./hosts/lg/hydrangea;
}
