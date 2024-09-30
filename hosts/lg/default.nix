{ config, ...}:

{
  base.location = "independent";
  base.virtualizationMode = "proxmox";

  profiles.alice = {
    enable = true;
  };

}