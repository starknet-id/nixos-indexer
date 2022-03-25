{ pkgs, ... }:
 {
  systemd.services.eykache = {
    description = "PROGRAMMESWAG";
    after = [ "network.target" ];

    serviceConfig = {
      Type = "simple";
      User = "thomas";
      ExecStart = "./env/bin/python eykache";
      WorkingDirectory = "/home/thomas/services/eykache";
      Restart = "on-failure";
    };

    wantedBy = [ "multi-user.target" ];
  };
}
