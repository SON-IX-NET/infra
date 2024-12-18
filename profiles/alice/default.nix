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
      settings = {
        server = {
          listen_http = "127.0.0.1:7340";
          enable_prefix_lookup = true;
        };
        noexport = {
          load_on_demand = true;
        };
        "source.cactus" = {
          name = "cactus";
        };
        "source.cactus.birdwatcher" = {
          api = "http://10.120.123.9:29184";
          type = "single_table";
          main_table = "master";
        };
        "source.tumbleweed" = {
          name = "tumbleweed";
        };
        "source.tumbleweed.birdwatcher" = {
          api = "http://10.120.123.10:29184";
          type = "single_table";
          main_table = "master";
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
