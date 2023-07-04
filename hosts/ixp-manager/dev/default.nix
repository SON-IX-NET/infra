{ ... }:

{
  imports = [
    ../default.nix
  ];

  config = {
    deployment.tags = [ "dev" "ixp-manager-dev" ];
  };
}