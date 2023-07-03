inputs:

{
  meta = {
    description = "Nix-based SON-IX related infrastructure";

    nixpkgs = import inputs.nixpkgs {
      system = "x86_64-linux";
      overlays = [
        (import ./packages inputs)
      ];
    };

    specialArgs = { inherit inputs; };
  };

  defaults = ./profiles/common;
}
