{ lib, ... }: {
  services.openssh = {
    enable = true;
    ports = [ 9832 ];
    permitRootLogin = "no";
    passwordAuthentication = true;
  };

  networking = {
    hostName = "nixos-indexer";
    firewall = {
      enable = false;
      allowPing = true;
      allowedTCPPorts = [ 80 443 ];
    };
  };
}
