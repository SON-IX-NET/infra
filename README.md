# SON-IX Infrastructure

Our servers are managed using the NixOS deployment tool [Colmena](https://github.com/zhaofengli/colmena).
Secrets are encrypted using [SOPS](https://github.com/mozilla/sops) and [age](https://github.com/FiloSottile/age) keys derived from SSH keys.

## Repo structure
```
.
├── flake.lock
├── flake.nix
├── hive.nix     # contains the definition of all our machines
├── hosts        # contains our host-specific configuration (hostname, network, etc.)
├── profiles     # contains our profiles that we apply on hosts
```

## Preparations

Currently you need to enable the experimental features "nix-command" and "flakes" in your nix daemon.

Then you can start a developer-shell using `nix develop` or use direnv to automatically drop into a developer shell when
entering the repository by running `echo "use flake" > .envrc && direnv allow`

## Build/Deployment

Some Examples:

- Build all hosts: `colmena build`
- Build & deploy a specific host: `colmena apply --on hostname`

## Profiles

### Common

Applied to all servers, configures basic settings like SSH auth, users, etc.

### IXP-Manager

Configures [IXP-Manager](https://www.ixpmanager.org/), a web frontend that allows peers to manage their peering port.
