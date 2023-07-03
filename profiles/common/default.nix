# common/default.nix

{ lib, config, inputs, pkgs, ... }@args:

let
  baseProfile = "${inputs.base-profile}";
  anycastProfile = "${inputs.anycast-profile}";
in
{
  imports = [
    baseProfile

    ./users
  ];

  base.copyConfig.sources = ../..;
  base.repositoryUrl = "https://git.wobcom.de/son-ix/sonixify";
  base.nixcom.version = "nixcom-0.1";
}
