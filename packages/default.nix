final: prev: {
  py-radix = final.callPackage ./py-radix.nix { };
  aggregate6 = final.callPackage ./aggregate6.nix { };
  arouteserver = final.callPackage ./arouteserver.nix { };
  arouteserver-defaults = final.callPackage ./arouteserver-defaults.nix { };
  ixp-manager = final.callPackage ./ixp-manager.nix { };
  birdwatcher = final.buildGoModule rec {
    pname = "birdwatcher";
    version = "unstable-2024-09-27";
    vendorHash = "sha256-NTD2pnA/GeTn4tXtIFJ227qjRtvBFCjWYZv59Rumc74=";

    src = final.fetchFromGitHub {
      owner = "alice-lg";
      repo = pname;
      rev = "47a1721ed376a4feacdf83d16288b206ea502c31";
      hash = "sha256-8wMT8g02kzayi0ZYQ5uiFWpf2Jft9d5C0jE5QAzamtA=";
    };

    deleteVendor = true;
  };
}
