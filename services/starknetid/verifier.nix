{ pkgs, ... }: {
  systemd.services.starknetid_verifier = {
    description = "PROGRAMMESWAG";
    after = [ "network.target" ];

    serviceConfig = {
      Type = "simple";
      User = "thomas";
      ExecStart =
        "/home/thomas/services/starknetid/verifier/env/bin/python verifier";
      WorkingDirectory = "/home/thomas/services/starknetid/verifier";
      Restart = "on-failure";
    };

    wantedBy = [ "multi-user.target" ];
  };
}
