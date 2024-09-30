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

  services.ixp-manager.settings = {
    AUTH_PEERINGDB_ENABLED = "true";
    PEERINGDB_OAUTH_REDIRECT = "https://ixp-manager.son-ix.net/auth/login/peeringdb/callback";
    PEERINGDB_OAUTH_CLIENT_ID = "$PEERINGDB_OAUTH_CLIENT_ID";
    PEERINGDB_OAUTH_CLIENT_SECRET = "$PEERINGDB_OAUTH_CLIENT_SECRET";
    MAIL_MAILER = "smtp";
    MAIL_HOST = "smarthost.service.wobcom.de";
    MAIL_PORT = "465";
    MAIL_ENCRYPTION = "tls";
    MAIL_USERNAME = "$MAIL_USERNAME";
    MAIL_PASSWORD = "$MAIL_PASSWORD";
    IXP_API_PEERING_DB_USERNAME = "$IXP_API_PEERING_DB_USERNAME";
    IXP_API_PEERING_DB_PASSWORD = "$IXP_API_PEERING_DB_PASSWORD";
  };

  system.stateVersion = "23.05";
}
