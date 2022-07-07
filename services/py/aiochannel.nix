{ lib, buildPythonPackage, aiounittest, fetchPypi, pytest }:

buildPythonPackage rec {
  pname = "aiochannel";
  version = "1.1.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256-LmrfW8Wq0565o81y4xmKlsgeQ2fzMwq5NfjIdZonjPc=";
  };

  doCheck = false;

  propagatedBuildInputs = [ aiounittest ];

  meta = with lib; {
    homepage = "https://github.com/tbug/aiochannel";
    description = "aiochannel";
    maintainers = with maintainers; [ th0rgal ];
  };
}
