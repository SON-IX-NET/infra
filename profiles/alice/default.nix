{ config, lib, ... }:

let
  cfg = config.profiles.alice;
in
{
  options.profiles.alice = {
    enable = lib.mkEnableOption "Enable alice";
  };

  config = lib.mkIf cfg.enable {

    systemd.services.alice-lg.restartTriggers = [ config.environment.etc."alice-lg/alice.conf".source ];
    services.alice-lg = {
      enable = true;
      settings = let
        birdwatcherSettings = {
          type = "single_table";
          main_table = "master";
          servertime = "2006-01-02T15:04:05Z07:00";
          servertime_short = "2006-01-02 15:04:05";
          servertime_ext = "2006-01-02 15:04:05";
        };
      in {
        server = {
          listen_http = "127.0.0.1:7340";
          enable_prefix_lookup = true;
          asn = 59552;
        };
        noexport = {
          load_on_demand = true;
        };
        noexport_reasons = {
          "59552:0:0" = "Do not announce to any peer";
        };
        rejection_reasons = {
          "59552:1001:1" = "Invalid AS_PATH length";
          "59552:1001:2" = "Prefix is bogon";
          "59552:1001:3" = "Prefix is in global blacklist";
          "59552:1001:4" = "Invalid AFI";
          "59552:1001:5" = "Invalid NEXT_HOP";
          "59552:1001:6" = "Invalid left-most ASN";
          "59552:1001:7" = "Invalid ASN in AS_PATH";
          "59552:1001:8" = "Transit-free ASN in AS_PATH";
          "59552:1001:9" = "Origin ASN not in IRRDB AS-SETs";
          "59552:1001:10" = "IPv6 prefix not in global unicast space";
          "59552:1001:11" = "Prefix is in client blacklist";
          "59552:1001:12" = "Prefix not in IRRDB AS-SETs";
          "59552:1001:13" = "Invalid prefix length";
          "59552:1001:14" = "RPKI INVALID route";
          "59552:1001:15" = "Never via route-servers ASN in AS_PATH";
          "59552:1001:65535" = "Unknown reject reason";
        };
        bgp_communities = {
          "0:59552" = "Do not announce to any peer";
          "59552:0:0" = "Do not announce to any peer";
          "0:*" = "Do not announce to AS$1";
          "59552:0:*" = "Do not announce to AS$2";
          "59552:*" = "Announce to AS$1";
          "59552:59552:*" = "Announce to AS$2";
          "65501:0" = "Prepend 1x to any other peer";
          "59552:65501:0" = "Prepend 1x to any other peer";
          "65502:0" = "Prepend 2x to any other peer";
          "59552:65502:0" = "Prepend 2x to any other peer";
          "65503:0" = "Prepend 3x to any other peer";
          "59552:65503:0" = "Prepend 3x to any other peer";
          "59552:101:*" = "Prepend 1x to AS$2";
          "59552:102:*" = "Prepend 2x to AS$2";
          "59552:103:*" = "Prepend 3x to AS$2";
          "59552:901:*" = "Add NO_EXPORT to peer AS$2";
          "59552:902:*" = "Add NO_ADVERTISE to peer AS$2";
        };
        "source.cactus" = {
          name = "cactus";
        };
        "source.cactus.birdwatcher" = {
          api = "http://10.120.123.9:29184";
        } // birdwatcherSettings;
        "source.tumbleweed" = {
          name = "tumbleweed";
        };
        "source.tumbleweed.birdwatcher" = {
          api = "http://10.120.123.10:29184";
        } // birdwatcherSettings;
      };
    };

    networking.firewall.allowedTCPPorts = [ 80 443 ];

    services.nginx.enable = true;
    services.nginx.virtualHosts."lg.son-ix.net" = {
      forceSSL = true;
      enableACME = true;
      locations."/" = {
        proxyPass = "http://127.0.0.1:7340";
      };
    };
  };
}
