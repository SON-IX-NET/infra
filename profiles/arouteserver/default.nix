{ config, lib, pkgs, ... }:

with lib;

let
  generalConfig = pkgs.writeText "general.yml" ''
    cfg:
      rs_as: ${builtins.toString cfg.ownASN}
      router_id: "${builtins.toString cfg.routerId}"
  '';

  arouteserverConfiguration = pkgs.writeText "arouteserver.yml" ''
    cfg_dir: "${pkgs.arouteserver-defaults}"

    cfg_general: "${generalConfig}"
    cfg_clients: "/var/lib/arouteserver/clients.yaml"

    cache_dir: "/var/cache/arouteserver"

    bgpq3_path: "${pkgs.bgpq4}/bin/bgpq4"
    bgpq3_host: "irrd.service.wobcom.de"

    check_new_release: False
  '';

  cfg = config.profiles.arouteserver;
in
{
  options.profiles.arouteserver = {
    enable = mkEnableOption "Enable arouteserver";

    routerId = lib.mkOption {
      type = types.str;
    };

    ownASN = lib.mkOption {
      type = types.int;
      default = 59552;
    };

    irrdUrl = lib.mkOption {
      type = types.str;
      default = "irrd.service.wobcom.de";
    };

    ixpManagerUrl = lib.mkOption {
      type = types.str;
      default = "ixp-manager.son-ix.net";
    };

    ixpId = lib.mkOption {
      type = types.int;
      default = 1;
    };

  };

  config = mkIf cfg.enable {

    sops.secrets = {
      "arouteserver-ixp-manager-api-token" = {
        owner = "arouteserver";
        group = "arouteserver";
        mode = "0400";
      };
    };
      

    networking.firewall.allowedTCPPorts = [ 179 29184 29186];

    environment.systemPackages = [
      pkgs.arouteserver
    ];

    users.users.arouteserver = {
      group = "arouteserver";
      isNormalUser = true;
    };
    users.groups.arouteserver = { };

    systemd.timers.arouteserver-config = {
      description = "arouteserver Configuration Generation";
      wantedBy = [ "timers.target" ];
      timerConfig = {
        OnCalendar = "*:0/15";
        Unit = "arouteserver-config.service";
      };

    };

    systemd.services.reload-bird2 = {
      serviceConfig = {
        Type = "oneshot";
        ExecStart = "${pkgs.systemd}/bin/systemctl reload bird2.service";
      };
    };

    systemd.services.arouteserver-config = {
      description = "arouteserver Configuration Generation";

      serviceConfig = {
        CacheDirectory = "arouteserver";
        StateDirectory = "arouteserver";
        ExecStart = pkgs.writeShellScript "arouteserver-config" ''
          set -euo pipefail

          url="https://${cfg.ixpManagerUrl}/api/v4/member-export/ixf/0.6?apikey=$(cat ${config.sops.secrets."arouteserver-ixp-manager-api-token".path})"
          ixp_id=${builtins.toString cfg.ixpId}
          
          ${pkgs.arouteserver}/bin/arouteserver clients-from-euroix \
                  --cfg ${arouteserverConfiguration} \
                  -o /var/lib/arouteserver/clients.yaml \
                  --url "$url" $ixp_id

          ${pkgs.arouteserver}/bin/arouteserver bird --cfg ${arouteserverConfiguration} -o /var/lib/arouteserver/bird2.conf;
        '';
        Type = "oneshot";
        User = "arouteserver";
        Group = "arouteserver";
      };
      unitConfig = {
        OnSuccess = "reload-bird2.service";
      };
    };

    services.bird2 = {
      enable = true;
      checkConfig = false;
      config = "";
      autoReload = false;
    };

    systemd.services.bird2 = {
      serviceConfig = {
        ExecStart = lib.mkForce "${pkgs.bird}/bin/bird -c /var/lib/arouteserver/bird2.conf";
      };
      after = [ "arouteserver-config.service" ];
      requires = [ "arouteserver-config.service" ];
    };

    services.birdwatcher = {
      enable = true;
      settings = import ./birdwatcher-cfg.nix { inherit pkgs; management_network = "10.120.123.0/24"; };
    };

    systemd.services.birdwatcher_v6 = {
      wants = [ "network.target" ];
      after = [ "network.target" ];
      wantedBy = [ "multi-user.target" ];
      description = "Birdwatcher IPv6";
      serviceConfig = {
        Type = "simple";
        Restart = "on-failure";
        RestartSec = 15;
        ExecStart = "${pkgs.birdwatcher}/bin/birdwatcher -6";
        StateDirectoryMode = "0700";
        UMask = "0117";
        NoNewPrivileges = true;
        ProtectSystem = "strict";
        PrivateTmp = true;
        PrivateDevices = true;
        ProtectHostname = true;
        ProtectClock = true;
        ProtectKernelTunables = true;
        ProtectKernelModules = true;
        ProtectKernelLogs = true;
        ProtectControlGroups = true;
        RestrictAddressFamilies = [ "AF_UNIX AF_INET AF_INET6" ];
        LockPersonality = true;
        MemoryDenyWriteExecute = true;
        RestrictRealtime = true;
        RestrictSUIDSGID = true;
        PrivateMounts = true;
        SystemCallArchitectures = "native";
        SystemCallFilter = "~@clock @privileged @cpu-emulation @debug @keyring @module @mount @obsolete @raw-io @reboot @setuid @swap";
        BindReadOnlyPaths = [
          "-/etc/resolv.conf"
          "-/etc/nsswitch.conf"
          "-/etc/ssl/certs"
          "-/etc/static/ssl/certs"
          "-/etc/hosts"
          "-/etc/localtime"
        ];
      };
    };
  };
}
