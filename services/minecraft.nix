{ pkgs, ... }: {
  systemd.services.minecraft = {
    description = "PROGRAMMESWAG";
    after = [ "network.target" ];

    serviceConfig = {
      Type = "simple";
      User = "thomas";
      ExecStart =
        "${pkgs.adoptopenjdk-jre-hotspot-bin-16}/bin/java -jar ./server.jar";
      WorkingDirectory = "/home/thomas/services/minecraft";
      Restart = "no";
    };

    wantedBy = [ "multi-user.target" ];
  };
}
