{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.profiles.ixp-manager;
in
{
  options.profiles.ixp-manager = {
    enable = mkEnableOption (mdDoc "Enable the IXP-Manager profile");

    fqdn = mkOption {
      type = types.str;
      description = mdDoc ''
        The FQDN for the nginx vHost of the IXP-Manager.
      '';
    };

    useDNSACMEChallenge = mkOption {
      type = types.bool;
      default = false;
      description = mdDoc ''
        Use the DNS-01 ACME challenge for the TLS certificate.
      '';
    };
  };

  config = mkIf cfg.enable {
    networking.firewall.allowedTCPPorts = [ 80 443 ];

    base.acme.enable = cfg.useDNSACMEChallenge;
    base.acme.primaryDomain = mkIf cfg.useDNSACMEChallenge cfg.fqdn;

    security.acme.certs."${cfg.fqdn}".reloadServices = mkIf cfg.useDNSACMEChallenge [ "nginx.service" ];

    users.users.nginx.extraGroups = mkIf cfg.useDNSACMEChallenge [ "acme" ];

    sops.secrets = {
      "ixp-manager-admin-pass" = {
        owner = "ixp-manager";
        group = "ixp-manager";
        mode = "0400";

        restartUnits = [ "ixp-manager-setup.service" ];
      };

      "ixp-manager.env" = {
        owner = "ixp-manager";
        group = "ixp-manager";
        mode = "0400";

        restartUnits = [ "ixp-manager-setup.service" ];
      };
    };

    services.ixp-manager = {
      enable = true;
      hostname = cfg.fqdn;
      enableMRTG = true;
      createDatabaseLocally = true;
      environmentFile = config.sops.secrets."ixp-manager.env".path;
      init = {
        adminUserName = "admin";
        adminEmail = "peering@wobcom.de";
        adminPasswordFile = config.sops.secrets."ixp-manager-admin-pass".path;
        adminDisplayName = "Admin";
        ixpName = "SON-IX";
        ixpShortName = "SON-IX";
        ixpASN = 65500;
        ixpPeeringEmail = "noc@son-ix.net";
        ixpNocPhone = "+49 123456789";
        ixpNocEmail = "noc@son-ix.net";
        ixpWebsite = "https://son-ix.net";
      };
      nginx = {
        forceSSL = true;
        enableACME = !cfg.useDNSACMEChallenge;
        sslCertificate = mkIf cfg.useDNSACMEChallenge config.base.acme.fullChain;
        sslCertificateKey = mkIf cfg.useDNSACMEChallenge config.base.acme.key;
      };
      settings = {
        APP_URL = "https://${cfg.fqdn}";
        DB_HOST = "localhost";
        DB_DATABASE = "ixpmanager";
        DB_USERNAME = "ixpmanager";
        DB_PASSWORD = "$DB_PASSWORD";
        IDENTITY_SITENAME = "SON-IX IXP Manager";
        IDENTITY_LEGALNAME = "WOBCOM GmbH";
        IDENTITY_CITY = "Wolfsburg";
        IDENTITY_COUNTRY = "DE";
        IDENTITY_NAME = "SON-IX";
        IDENTITY_EMAIL = "ixp@example.com";
        IDENTITY_WATERMARK = "SON-IX";
        IDENTITY_ORGNAME = "SON-IX";
        IDENTITY_CORPORATE_URL = "https://son-ix.net/";
        IDENTITY_BIGLOGO = "//son-ix.net/images/logos/sonix-darkgrey.svg";
      };
    };
  };
}
