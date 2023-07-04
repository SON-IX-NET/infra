{ ... }:

{
  config = {
    deployment.tags = [ "ixp-manager" ];
    networking.nameservers = [ "62.176.224.67" "62.176.224.77" ];
  };
}