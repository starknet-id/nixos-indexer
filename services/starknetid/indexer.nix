{ pkgs, ... }: {
  virtualisation.docker.enable = true;
  environment.systemPackages = with pkgs; [ docker-compose ];
  systemd.services.starknetid_indexer = {
    description = "PROGRAMMESWAG";
    after = [ "network.target" ];

    serviceConfig = {
      Type = "simple";
      User = "thomas";
      ExecStart =
        "/home/thomas/services/starknetid/indexer/env/bin/python indexer";
      WorkingDirectory = "/home/thomas/services/starknetid/indexer";
      Restart = "on-failure";
    };

    wantedBy = [ "multi-user.target" ];
  };
}
