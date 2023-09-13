{ config, lib, pkgs, ... }:

let
  adminUsers = [
    "cdieckhoff"
    "fweber"
    "jwagner"
    "jgraul"
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
  });

}
