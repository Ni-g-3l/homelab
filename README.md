![HEADER](./.media/header.jpg)

# Selfhosted Homelab

This repository contains all information and config files about my selfhosted homelab.

## Setup Summary

* [Operating System](./hardware/os.md)
* [Security](./hardware/security.md)
* [Storage](./hardware/storage.md)

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

### Deploy new service :

```bash
task new
```

This little command will launch a [Copier](https://copier.readthedocs.io/en/latest/) Template and deploy a new service folder inside dedicated service folders.

### Manage Service

Each service deployed with the service template comes with a set of commands to handle the service throught docker compose plugin.

```bash
# Start container
task up

# Stop container
task down

# Update container
task update
```
