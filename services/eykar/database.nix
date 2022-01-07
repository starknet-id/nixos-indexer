{ pkgs, ... }: {

  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_14;
    extraPlugins = with pkgs.postgresql_14.pkgs; [ postgis ];
    enableTCPIP = true;
    authentication = pkgs.lib.mkOverride 10 ''
      local all all trust
      host all all ::1/128 trust
    '';
    initialScript = pkgs.writeText "backend-initScript" ''
      CREATE ROLE eykache WITH LOGIN PASSWORD 'eykache' CREATEDB;
      CREATE DATABASE eykache;
      GRANT ALL PRIVILEGES ON DATABASE eykache TO eykache;
    '';
  };

}
