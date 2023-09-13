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
    networking.firewall.allowedTCPPorts = [ 80 443 ];

    services.mysql = {
      enable = true;
      package = pkgs.mysql80;
      settings.mysqld.log_bin_trust_function_creators = 1;
      ensureDatabases = [ "ixpmanager" ];
      ensureUsers = [
        {
          name = "ixpmanager";
          ensurePermissions = { "ixpmanager.*" = "ALL PRIVILEGES"; };
        }
      ];
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
        enableACME = true;
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

    services.phpfpm.pools.ixp-manager.phpPackage = lib.mkForce (pkgs.php82.buildEnv {
      extensions = ({ enabled, all }: enabled ++ (with all; [
        snmp
      ]));
      extraConfig = ''
        log_errors = on
        post_max_size = 100M
        upload_max_filesize = 100M
        date.timezone = "${config.time.timeZone}"
      '';
    });

    systemd.services.ixp-manager-setup.serviceConfig.PermissionsStartOnly = true;
    systemd.services.ixp-manager-setup.after = [ "mysql.service" ];
    systemd.services.ixp-manager-setup.preStart = ''
      ${config.security.sudo.package}/bin/sudo -u ${config.services.mysql.user} ${pkgs.mysql80}/bin/mysql -e \
          "ALTER USER '${config.services.ixp-manager.settings.DB_USERNAME}'@'localhost' IDENTIFIED WITH mysql_native_password by '$DB_PASSWORD'; \
          GRANT ALL ON \`${config.services.ixp-manager.settings.DB_DATABASE}\`.* TO '${config.services.ixp-manager.settings.DB_USERNAME}'@'localhost'; \
          FLUSH PRIVILEGES;"
    '';
  };
}
