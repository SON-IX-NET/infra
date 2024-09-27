{ python3Packages
, fetchPypi
}:

python3Packages.buildPythonPackage rec {
  pname = "py-radix";
  version = "0.10.0";

  propagatedBuildInputs = with python3Packages; [
    nose
    coverage
  ];

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-uNvRNEuzDGoQl9QQMgPHsRfZKTFiA2WYUBjeS+9a7eM=";
  };

}
