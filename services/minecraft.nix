{ pkgs, ... }: {
  systemd.services.minecraft = {
    description = "PROGRAMMESWAG";
    after = [ "network.target" ];

    serviceConfig = {
      Type = "simple";
      User = "thomas";
      ExecStart = "${pkgs.jdk}/bin/java -jar ./server.jar";
      WorkingDirectory = "/home/thomas/services/minecraft";
      Restart = "no";
    };

    wantedBy = [ "multi-user.target" ];
  };
}
