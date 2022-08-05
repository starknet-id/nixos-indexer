{ pkgs, ... }: {
  require = [
    ./hardware-configuration.nix
    ./networking.nix
    ./users.nix
    ./web.nix
  ];

  boot = { cleanTmpDir = true; };

  # Packages
  environment.systemPackages = with pkgs; [ docker-compose git ];
  virtualisation.docker.enable = true;
}
