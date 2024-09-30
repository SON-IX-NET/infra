{ config, lib, ... }:

let
  cfg = config.profiles.alice;
in
{
  options.profiles.alice = {
    enable = lib.mkEnableOption "Enable alice";
  };

  config = lib.mkIf cfg.enable {

    services.alice-lg = {
      enable = true;
      settings = {
        server = {
          listen_http = "127.0.0.1:7340";

        };
        "source.cactus" = {
          name = "cactus";
        };
        "source.cactus.birdwatcher" = {
          api = "http://10.120.123.9:29184";
          type = "multi_table";
          peer_table_prefix = "T";
          pipe_protocol_prefix = "M";
        };
        "source.tumbleweed" = {
          name = "tumbleweed";
        };
        "source.tumbleweed.birdwatcher" = {
          api = "http://10.120.123.10:29184";
          type = "multi_table";
          peer_table_prefix = "T";
          pipe_protocol_prefix = "M";
        };
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
