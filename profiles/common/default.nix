# common/default.nix

{ lib, config, inputs, pkgs, ... }@args:

let
  baseProfile = "${inputs.base-profile}";
in
{
  imports = [
    baseProfile

    ./deployment.nix
    ./users

    ../ixp-manager
    ../../modules
  ];

  base.copyConfig.sources = ../..;
  base.repositoryUrl = "https://git.wobcom.de/son-ix/sonixify";
  base.nixcom.version = "nixcom-0.1";
}
