{ python3Packages,
  fetchPypi, 
  lib, 
  aggregate6 ? python3Packages.aggregate6,
}:

python3Packages.buildPythonApplication rec {
  pname = "arouteserver";
  version = "1.23.1";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-HqUF+zQiKh2/a76e4cNTBTCzmBTw+FCCvd7FnfBMVIw=";
  };

  nativeBuildInputs = [
    python3Packages.pythonRelaxDepsHook
  ];
  pythonRelaxDeps = [
    "packaging"
  ];

  propagatedBuildInputs = with python3Packages; [
    jinja2
    pyyaml
    requests
    packaging
    urllib3
    aggregate6
  ];

  postInstall = ''
    chmod +x $out/bin/arouteserver
  '';


  doCheck = false;

}