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
  };

  config = mkIf cfg.enable {
    security.acme.acceptTerms = true;
    security.acme.defaults.email = "letsencrypt@wobcom.de";

    networking.firewall.allowedTCPPorts = [ 80 443 ];

    base.acme.enable = true;
    base.acme.primaryDomain = cfg.fqdn;

    security.acme.certs."${cfg.fqdn}".reloadServices = [ "nginx.service" ];

    users.users.nginx.extraGroups = [ "acme" ];

    services.mysql = {
      enable = true;
      package = pkgs.mysql80;
      initialScript = (pkgs.writeText "mysql-init-script" ''
        CREATE DATABASE `ixpmanager`;
        CREATE USER `ixpmanager`@`localhost`;
        GRANT ALL ON `ixpmanager`.* TO `ixpmanager`@`localhost`;
        GRANT SYSTEM_USER ON *.* TO `ixpmanager`@`localhost`;
        GRANT SUPER ON *.* TO `ixpmanager`@`localhost`;
        FLUSH PRIVILEGES;
      '');
    };

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
      environmentFile = config.sops.secrets."ixp-manager.env".path;
      init = {
        adminUserName = "admin";
        adminEmail = "admin@example.com";
        adminPasswordFile = config.sops.secrets."ixp-manager-admin-pass".path;
        adminDisplayName = "Admin";
        ixpName = "SON-IX";
        ixpShortName = "SON-IX";
        ixpASN = 65500;
        ixpPeeringEmail = "peering@example.com";
        ixpNocPhone = "+49 123456789";
        ixpNocEmail = "noc@example.com";
        ixpWebsite = "https://son-ix.net";
      };
      nginx = {
        default = true;
        forceSSL = true;
        sslCertificate = config.base.acme.fullChain;
        sslCertificateKey = config.base.acme.key;
      };
      settings = {
        APP_URL = "https://ixp-manager.lab.wobcom.de";
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
