{ buildPecl, lib, pkg-config, rrdtool }:

buildPecl {
  pname = "rrd";

  version = "2.0.3";
  sha256 = "sha256-pCFh5YzcioU7cs/ymJidy96CsPdkVt1ZzgKFTJK3MPc=";

#  configureFlags = [ "--with-yaml=${libyaml.dev}" ];

  nativeBuildInputs = [ pkg-config rrdtool ];

  meta = {
    description = "PHP bindings to rrd tool system";
    license = lib.licenses.bsd0;
    homepage = "https://github.com/php/pecl-processing-rrd";
    maintainers = lib.teams.php.members;
  };
}