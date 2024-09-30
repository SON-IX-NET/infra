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
    hashedPassword = "$6$xy1312z$bAhL525h6COOkQHzxX4snZt6vfmr8Y24RkQ2ied3YukbL/iuRO0sw1aN9q513FTLRlKr2/a/cVD90Gw8py/3g0";
  };

  config.base.users = lib.attrsets.genAttrs adminUsers (user: {
    isAdmin = true;
  });
}
