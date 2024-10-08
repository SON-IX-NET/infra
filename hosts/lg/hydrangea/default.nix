{ config, pkgs, inputs, lib, ... }:

{
  imports = [
    ../default.nix
  ];

  base.nixcom.version = "nixcom-0.1";

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.useDHCP = false;
  networking.interfaces.ens19 = {
    ipv6.addresses = [{ address="2a01:581:5:5::3"; prefixLength = 64; }];
    ipv4.addresses = [{ address="62.176.226.243"; prefixLength = 28; }];
  };

  networking.interfaces.ens18 = {
    ipv4.addresses = [{ address="10.120.123.11"; prefixLength = 24; }];
  };

  networking.defaultGateway6 = "2a01:581:5:5::1";
  networking.defaultGateway = "62.176.226.241";

  base.primaryIP = { inherit (lib.head config.networking.interfaces.ens19.ipv4.addresses) address prefixLength; };
  base.primaryIPv6 = { inherit (lib.head config.networking.interfaces.ens19.ipv6.addresses) address prefixLength; };

  deployment.targetHost = "62.176.226.243";

  networking.hostName = "lg-hydrangea";

  system.stateVersion = "24.05";
}
