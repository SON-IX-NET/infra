{ config, pkgs, ... }:

let 
  name = "lhvs0007-ixp-manager";
  ip4_net = "10.120.120.47";
  ip4_cidr = 23;
  ip4_gateway = "10.120.120.1";
in 

{
  imports = [
    ../default.nix
  ];

  config = {
    system.stateVersion = "23.05"; # don't touch this

    networking.hostName = name;
    networking.domain = "staging.infra.wobcom.de";
    networking.useDHCP = false;
    networking.dhcpcd.enable = false;

    systemd.network = {
      enable = true;
      networks = {
        "40-ens18" = {
          name = "ens18";
          address = [
            "${ip4_net}/${toString ip4_cidr}" 
          ];
          gateway = [
            ip4_gateway
          ];
        };
      };
    };

    base.primaryIP = {
      address = ip4_net;
      prefixLength = ip4_cidr;
    };
    
    sops.defaultSopsFile = ./secrets.yaml;
    
    profiles.ixp-manager = {
      enable = true;
      fqdn = "ixp-manager.lab.wobcom.de";
      useDNSACMEChallenge = true;
      enableMRTG = true;
    };
  };
}
