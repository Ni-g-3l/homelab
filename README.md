![HEADER](./.media/header.jpg)

# Selfhosted Homelab

This repository contains all information and config files about my selfhosted homelab.

## Setup Summary

* [Operating System](./hardware/os.md)
* [Security](./hardware/security.md)
* [Storage](./hardware/storage.md)

## Available Services

* Reverse Proxy : [README](./services/npm/README.md)
* Monitoring : [README](./services/beszel/README.md)
* VPN : [README](./services/openvpn/README.md)
* MediaCenter : 
    * Jellyfin : [README](./services/jellyfin/README.md)
    * Downloader : [README](./services/jdownloader/README.md)
    * Kavita : [README](./services/kavita/README.md)
    * Gallery : [README](./services/pygallery/README.md)

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
