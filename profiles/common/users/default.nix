{ config, lib, pkgs, ... }:

let
  adminUsers = [
    "cdieckhoff"
    "fweber"
    "jwagner"
    "ekeske"
    "lgrams"
    "ypaessler"
    "sterzenbach"
  ];
in
{

  config.users.mutableUsers = false;

  config.users.users.support = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    hashedPassword = "$y$j9T$1BLvLhkneQTP/Sf7rG0J./$femlrRg7kG6FthOEqCBQu/1utxR0ftQjqj/5frrPjUD";
  };

  config.base.users = lib.attrsets.genAttrs adminUsers (user: {
    isAdmin = true;
  }) // {
    jwagner.sshPublicKeys = lib.mkForce [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKXilAU8ffa07ohXE5Q9GCUDb236MXUBE9VF8+QWK52Q johann.wagner@wobcom.de"
    ];
  };

}
