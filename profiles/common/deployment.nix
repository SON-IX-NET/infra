{ config, lib, ... }:

with lib;

{
  deployment.targetHost = config.base.primaryIP.address;
  deployment.targetUser = null;
}
