{ python3Packages
, fetchPypi
, py-radix ? python3Packages.py-radix
}:

python3Packages.buildPythonPackage rec {
  pname = "aggregate6";
  version = "1.0.12";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-vg14uOhPltsvxn0XlV0W9gy9dq3+vZpi/h3Hytmyc9k=";
  };

  propagatedBuildInputs = with python3Packages; [
    py-radix
    mock
    coverage
  ];
}
