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

  security.acme.acceptTerms = true;
  security.acme.defaults.email = "letsencrypt@wobcom.de";

  services.fail2ban.enable = lib.mkForce false;

  networking.domain = lib.mkDefault "infra.son-ix.net";

  base.copyConfig.sources = ../..;
  base.repositoryUrl = "https://github.com/son-ix-net/infra";
  base.nixcom.version = lib.mkDefault "nixcom-0.1";

 # until colmena supports passing nixpkgs as a flake
  system.nixos = let
    self = inputs.nixpkgs;
  in {
    versionSuffix =
    ".${lib.substring 0 8 (self.lastModifiedDate or self.lastModified or "19700101")}.${self.shortRev or "dirty"}";
    revision = lib.mkIf (self ? rev) self.rev;
  };

  system.configurationRevision =
    if inputs.self ? rev
    then inputs.self.rev
    else "dirty-${inputs.self.lastModifiedDate}";
}
