{ lib, config, ... }: {
  deployment.targetUser = null;
  deployment.targetHost = lib.mkDefault config.networking.fqdn;
}
