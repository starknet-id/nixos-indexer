{ pkgs, ... }: {
  require = [
    ./hardware-configuration.nix
    ./networking.nix
    ./users.nix
    ./web.nix

    ./services/dear.nix
    ./services/eykar/database.nix
    ./services/eykar/eykache.nix
    ./services/starknetid.nix
    ./services/minecraft.nix
  ];

  boot = { cleanTmpDir = true; };

  # Packages
  environment.systemPackages = with pkgs; [ wget git ];

}
