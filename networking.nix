{ lib, ... }: {
  services.openssh = {
    enable = true;
    ports = [ 9473 ];
    permitRootLogin = "no";
    passwordAuthentication = true;
  };

  networking = {
    hostName = "hera";
    firewall = {
      enable = false;
      allowPing = true;
      allowedTCPPorts = [ 80 443 6000 25565 ]; # HTTP, SSL, TOR, MINECRAFT
    };
  };
}
