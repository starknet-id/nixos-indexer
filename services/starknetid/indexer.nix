{ pkgs, ... }:
let
  apibara_py = pkgs.python39.withPackages (python-packages:
    with python-packages; [
      (callPackage ../py/apibara.nix { })
      black
      aiohttp
      aiohttp-cors
      toml
    ]);
in {
  virtualisation.docker.enable = true;
  environment.systemPackages = with pkgs; [ docker-compose ];
  systemd.services.starknetid_indexer = {
    description = "PROGRAMMESWAG";
    after = [ "network.target" ];

    serviceConfig = {
      Type = "simple";
      User = "thomas";
      ExecStart = apibara_py + "/bin/python indexer";
      WorkingDirectory = "/home/thomas/services/starknetid/indexer";
      Restart = "on-failure";
    };

    wantedBy = [ "multi-user.target" ];
  };
}
