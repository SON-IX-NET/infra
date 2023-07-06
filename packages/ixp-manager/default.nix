{ pkgs, stdenv, lib, fetchFromGitHub, python310Packages, unixtools, php82
, dataDir ? "/var/lib/ixp-manager"}:

let
  package = (import ./composition.nix {
    inherit pkgs;
    inherit (stdenv.hostPlatform) system;
    noDev = true; # Disable development dependencies
    php = php82;
  });

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
    rm -rf $out/bootstrap/cache $out/storage $out/.env
    ln -s ${dataDir}/.env $out/.env
    ln -s ${dataDir}/storage $out/storage
    ln -s ${dataDir}/cache $out/bootstrap/cache
    ln -s ${dataDir}/skin $out/resources/skins/custom
    ln -s ${dataDir}/custom.php $out/config/custom.php
  '';

  meta = with lib; {
    description = "A full stack management platform for Internet eXchange Points (IXPs).";
    homepage    = "https://www.ixpmanager.org/";
    license     = licenses.gpl2Only;
    maintainers = with maintainers; [ netali ];
    platforms   = platforms.linux;
  };
}