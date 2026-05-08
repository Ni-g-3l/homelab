![HEADER](./.media/header.jpg)

# Selfhosted Homelab

This repository contains all information and config files about my selfhosted homelab.

## Architecture

```
                        ┌──────────────┐
                        │   Internet    │
                        └──────┬───────┘
                               │
                        ┌──────┴───────┐
                        ▼              ▼
                    ┌────────┐  ┌──────────┐
                    │  NPM   │  │  OpenVPN  │
                    │ 80/443 │  │ 1194/udp  │
                    └───┬────┘  └──────────┘
                        │
              ┌─────────┼─────────┬─────────┐
              │         │         │         │
              ▼         ▼         ▼         ▼
          ┌──────┐ ┌────────┐ ┌──────┐ ┌────────┐
          │Jelly │ │Heimdall│ │Fusion│ │JDownld │
          │ fin  │ │        │ │      │ │ loader │
          └──┬───┘ └────────┘ └──────┘ └───┬────┘
             │                              │
             └──────────────┬───────────────┘
                            ▼
                       ┌────────┐
                       │  NAS   │
                       │ (NFS)  │
                       └────────┘

    Infrastructure (connects to all services above):
    ┌─────────────────┐  ┌─────────────────┐
    │   Watchtower    │  │     Beszel      │
    │  auto-updater   │  │    monitoring   │
    └─────────────────┘  └─────────────────┘
```

## Quick Start

```bash
# One-liner install (curl | bash)
curl -fsSL https://raw.githubusercontent.com/Ni-g-3l/homelab/main/scripts/bootstrap.sh | bash -s all

# Or clone and run manually
git clone https://github.com/Ni-g-3l/homelab.git
cd homelab
task install
```

## Setup Summary

* [Operating System](./hardware/os.md)
* [Security](./hardware/security.md)
* [Storage](./hardware/storage.md)
* [Docker & Networks](./software/docker.md)

## Available Services

* Reverse Proxy: [Nginx Proxy Manager](./services/npm/README.md)
* Monitoring: [Beszel](./services/beszel/README.md)
* VPN: [OpenVPN](./services/openvpn/README.md)
* Dashboard: [Heimdall](./services/heimdall/README.md)
* Media:
    * [Jellyfin](./services/jellyfin/README.md) - Media server
    * [JDownloader](./services/jdownloader/README.md) - Download manager
    * [Fusion](./services/fusion/README.md) - RSS reader
* Automation: [Watchtower](./services/watchtower/README.md) - Auto-updater

## How to ?

### Deploy new service

```bash
task new
```

This command will launch a [Copier](https://copier.readthedocs.io/en/latest/) template and deploy a new service folder inside `services/`.

### Manage Service

Each service deployed with the service template comes with a set of commands to handle the service through Docker Compose.

```bash
# Start container
task up

# Stop container
task down

# Update container
task update
```

### Backup

Back up all service configs and data:

```bash
task backup
```

### Update All Services

Update all Docker services at once:

```bash
task update-all
```

### Server Setup

Provision a new server or rerun specific setup steps:

```bash
# Interactive menu
./scripts/bootstrap.sh

# Or via task
task setup -- docker
```
