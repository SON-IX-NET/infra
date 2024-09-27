final: prev: {
  py-radix = final.callPackage ./py-radix.nix { };
  aggregate6 = final.callPackage ./aggregate6.nix { };
  arouteserver = final.callPackage ./arouteserver.nix { };
  arouteserver-defaults = final.callPackage ./arouteserver-defaults.nix { };
}
