{ config, pkgs, inputs, lib, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../default.nix
    ];
  base.nixcom.version = null;

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.useDHCP = false;
  networking.interfaces.ens18 = {
    ipv4.addresses = [{ address="10.120.123.8"; prefixLength = 24; }];
  };
  networking.interfaces.ens19 = {
    ipv6.addresses = [{ address="2a01:581:5:5::2"; prefixLength = 64; }];
    ipv4.addresses = [{ address="62.176.226.242"; prefixLength = 28; }];
  };

  networking.defaultGateway6 = "2a01:581:5:5::1";
  networking.defaultGateway = "62.176.226.241";

  base.primaryIP = { inherit (lib.head config.networking.interfaces.ens19.ipv4.addresses) address prefixLength; };
  base.primaryIPv6 = { inherit (lib.head config.networking.interfaces.ens19.ipv6.addresses) address prefixLength; };

  networking.hostName = "ixp-manager";

  deployment.tags = [ "ixp-manager-prod" ];
  deployment.targetHost = "62.176.226.242";

  sops.defaultSopsFile = ./secrets.yaml;

  profiles.ixp-manager = {
    enable = true;
    fqdn = "ixp-manager.son-ix.net";
  };

  system.stateVersion = "23.05";
}
