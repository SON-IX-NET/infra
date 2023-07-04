{ pkgs, stdenv, lib, fetchFromGitHub, python310Packages, unixtools, php82
, dataDir ? "/var/lib/ixp-manager"}:

let
  package = (import ./composition.nix {
    inherit pkgs;
    inherit (stdenv.hostPlatform) system;
    noDev = true; # Disable development dependencies
    php = php82;
  });

  # for some reason, the patch fails when we try to apply it in the patch phase
  # so wie apply it manually in the postInstall phase
  patch = pkgs.copyPathToStore ./schema-fix.patch;

in package.override rec {
  name = pname + "-" + version;
  pname = "ixp-manager";
  version = "6.3.1";

  src = fetchFromGitHub {
    owner = "inex";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-uUTJr7xIDDV6GrzLwXOv3sQ1rU8L1iofTFCKWatMjPs=";
  };

  postInstall = ''
    # fix broken DB schema
    patch -p1 -i ${patch}
    rm -f $out/database/migrations/2020_09_18_095136_delete_ixp_table.php
    # create symlinks to state dir
    rm -rf $out/bootstrap/cache $out/storage $out/.env
    ln -s ${dataDir}/.env $out/.env
    ln -s ${dataDir}/storage $out/storage
    ln -s ${dataDir}/cache $out/bootstrap/cache
  '';

  meta = with lib; {
    description = "A full stack management platform for Internet eXchange Points (IXPs).";
    homepage    = "https://www.ixpmanager.org/";
    license     = licenses.gpl2Only;
    maintainers = with maintainers; [ netali ];
    platforms   = platforms.linux;
  };
}