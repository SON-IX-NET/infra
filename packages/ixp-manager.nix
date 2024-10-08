{ lib
, fetchFromGitHub
, php82
, dataDir ? "/var/lib/ixp-manager"
}:

let
  phpPackage = php82;

in phpPackage.buildComposerProject rec {
  pname = "ixp-manager";
  version = "6.4.1";

  src = fetchFromGitHub {
    owner = "inex";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-Hgjem/3z3FXWklZTbN0Y+gJEeL6QGGePEd70qC28Ktg=";
  };

  composerStrictValidation = false;

  vendorHash = "sha256-l5DHdjMZT5QfcVDyk02MR0y/yEfZamRwmE9D/ObIEuk=";

  installPhase = ''
    runHook preInstall

    mv $out/share/php/ixp-manager/* $out
    rm -r $out/share

    rm -rf $out/bootstrap/cache $out/storage $out/.env
    ln -s ${dataDir}/.env $out/.env
    ln -s ${dataDir}/storage $out/storage
    ln -s ${dataDir}/cache $out/bootstrap/cache
    ln -s ${dataDir}/skin $out/resources/skins/custom
    ln -s ${dataDir}/custom.php $out/config/custom.php

    runHook postInstall
  '';

  passthru = { inherit phpPackage; };

  meta = with lib; {
    description = "A full stack management platform for Internet eXchange Points (IXPs)";
    homepage    = "https://www.ixpmanager.org/";
    license     = licenses.gpl2Only;
    maintainers = teams.wdz.members;
    platforms   = platforms.linux;
  };
}
