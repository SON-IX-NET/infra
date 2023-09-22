self: super: {
  php82 = super.php82.override {
    packageOverrides = final: prev: {
      extensions = prev.extensions // {
        rrd = final.callPackage ./php-rrd.nix { };
      };
    };
  };
}
