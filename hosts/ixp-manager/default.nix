{ config, ... }:

{
  config = {
    deployment.tags = [ "ixp-manager" ];
    networking.nameservers = [ "62.176.224.67" "62.176.224.77" ];
    deployment.targetHost = config.base.primaryIP.address;
  };
}