{ config, pkgs, inputs, lib, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../default.nix
    ];

  base.nixcom.version = null;

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  base.primaryIP.address = "62.176.226.242";
  networking.interfaces.enp6s18 = {
    ipv6.addresses = [{ address="2a01:581:5:5::2"; prefixLength = 64; }];
    ipv4.addresses = [{ address="62.176.226.242"; prefixLength = 28; }];
  };
  networking.defaultGateway6 = "2a01:581:5:5::1";
  networking.defaultGateway = "62.176.226.241";

  networking.interfaces.enp6s19 = {
    ipv4.addresses = [{ address="10.120.123.8"; prefixLength = 24; }];
  };

  networking.hostName = "ixp-manager";

  deployment.tags = [ "ixp-manager-prod" ];

  sops.defaultSopsFile = ./secrets.yaml;

  profiles.ixp-manager = {
    enable = true;
    fqdn = "ixp-manager.son-ix.net";
  };

  system.stateVersion = "23.05";
}
