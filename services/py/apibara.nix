{ lib, callPackage, buildPythonPackage, fetchPypi, grpcio, grpcio-tools
, eth-hash, click, click-help-colors, aiohttp, pytest }:

let
  aiochannel = (callPackage ./aiochannel.nix { });
  backoff = (callPackage ./backoff.nix { });

in buildPythonPackage rec {
  pname = "apibara";
  version = "0.2.1";

  src = fetchPypi {
    inherit version;
    pname = "apibara-for-nix";
    sha256 = "sha256-WGQQNEHx8RuhJQmGTVw+0fSNO7d0IcCJIbUn3fFxmdE=";
  };

  propagatedBuildInputs = [
    grpcio
    grpcio-tools
    eth-hash
    aiohttp
    click
    click-help-colors
    aiochannel
    backoff
  ];

  meta = with lib; {
    homepage = "https://github.com/apibara/python-sdk";
    description = "Apibara Python SDK";
    maintainers = with maintainers; [ th0rgal ];
  };
}
