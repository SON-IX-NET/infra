{ stdenv
, arouteserver
}:

stdenv.mkDerivation {
  name = "arouteserver-defaults";

  buildCommand = ''
    ${arouteserver}/bin/arouteserver setup --dest-dir $out  

    grep -v 'log "/var/log/bird.log" all;' $out/templates/bird/header.j2 > header-erased.j2
    mv header-erased.j2 $out/templates/bird/header.j2

  '';
}
