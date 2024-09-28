{ config, ...}:

{
  base.location = "independent";
  base.virtualizationMode = "proxmox";

  sops.defaultSopsFile = ./secrets.yaml;

  profiles.arouteserver = {
    enable = true;
  };
}