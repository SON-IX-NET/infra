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
    ipv6.addresses = [{ address="2001:7f8:25::5:9552:2"; prefixLength = 64; }];
    ipv4.addresses = [{ address="193.201.149.2"; prefixLength = 26; }];
  };

  networking.interfaces.ens18 = {
    ipv4.addresses = [{ address="10.120.123.10"; prefixLength = 24; }];
  };
  networking.defaultGateway = "10.120.123.1";

  base.primaryIP = { inherit (lib.head config.networking.interfaces.ens19.ipv4.addresses) address prefixLength; };
  base.primaryIPv6 = { inherit (lib.head config.networking.interfaces.ens19.ipv6.addresses) address prefixLength; };

  deployment.targetHost = "10.120.123.10";

  networking.hostName = "route-server-tumbleweed";

  profiles.arouteserver = {
    routerId = "193.201.149.2";
  };
  system.stateVersion = "24.05";
}
