{ config, ...}:

{
  base.location = "independent";
  base.virtualizationMode = "proxmox";

  profiles.arouteserver = {
    enable = true;
  };
}