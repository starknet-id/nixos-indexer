{ lib, ... }: {
  services = {

    openssh = {
      enable = true;
      ports = [ 9473 ];
      permitRootLogin = "no";
      passwordAuthentication = true;
    };

    xserver = {
      enable = true;
      displayManager.sddm.enable = true;
      desktopManager.plasma5.enable = true;
    };

    xrdp = {
      enable = true;
      defaultWindowManager = "startplasma-x11";
    };

  };

  networking = {
    hostName = "hera";
    firewall = {
      enable = false;
      allowPing = true;
      allowedTCPPorts =
        [ 80 443 3389 6000 25565 ]; # HTTP, SSL, RDP, TOR, MINECRAFT
    };
  };
}
