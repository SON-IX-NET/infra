{ config, lib, pkgs, ... }:

with lib;

let


  clientConfig = pkgs.writeText "clients.yml" ''
    clients:
      - asn: 208395
        ip: "193.201.149.4"
        description: "WDZ GmbH"
        16bit_mapped_asn: 64512
      - asn: 208395
        ip: "2001:7f8:25::20:8395:1"
        description: "WDZ GmbH"
        16bit_mapped_asn: 64512
  '';

  generalConfig = pkgs.writeText "general.yml" ''
    cfg:
      rs_as: 59552
      router_id: "193.201.149.1"
  '';

  arouteserverConfiguration = pkgs.writeText "arouteserver.yml" ''
    cfg_dir: "${pkgs.arouteserver-defaults}"

    cfg_general: "${generalConfig}"
    cfg_clients: "${clientConfig}"

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


  };

  config = mkIf cfg.enable {

    networking.firewall.allowedTCPPorts = [ 179 ];

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
        ExecStart = "${pkgs.arouteserver}/bin/arouteserver bird --cfg ${arouteserverConfiguration} -o /var/lib/arouteserver/bird2.conf";
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
  };
}
