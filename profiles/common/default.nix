# common/default.nix

{ lib, config, inputs, pkgs, ... }@args:

let
  baseProfile = "${inputs.base-profile}";
in
{
  imports = [
    baseProfile
    "${inputs.nixpkgs-ixp-manager}/nixos/modules/services/web-apps/ixp-manager.nix"

    ./deployment.nix
    ./users

    ../ixp-manager
  ];

  base.copyConfig.sources = ../..;
  base.repositoryUrl = "https://git.wobcom.de/son-ix/sonixify";
  base.nixcom.version = "nixcom-0.1";
}
