{ pkgs, ... }:
let
  dear_python = python39.withPackages
    (python-packages: with python-packages; [ discordpy toml ]);
in {
  systemd.services.dear = {
    description = "PROGRAMMESWAG";
    after = [ "network.target" ];

    serviceConfig = {
      Type = "simple";
      User = "thomas";
      ExecStart = dear_python + "/bin/python dear";
      WorkingDirectory = "/home/thomas/services/dear/";
      Restart = "on-failure";
    };

    wantedBy = [ "multi-user.target" ];
  };
}
