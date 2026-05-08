![logo](../.media/docker.png)

# Docker

Docker is a platform designed to help developers build, share, and run container applications. All services deployed on this homelab are based on Docker containers.

## Installation

You can install Docker using the setup script:

```bash
./scripts/setup/docker.sh
```

Or via the bootstrap menu:

```bash
./scripts/bootstrap.sh docker
```

## Networks

The homelab uses two Docker networks:

| Network | Type | Purpose |
|---------|------|---------|
| `{service}_default` | bridge (internal) | Isolated per-service network |
| `homelab_network_proxy` | bridge (external) | Shared network for reverse proxy access |

Services connect to both networks so Nginx Proxy Manager can route traffic to them.

## Volumes

Each service typically uses:

- `storage/` — Persistent data (databases, media, uploads)
- `config/` — Application configuration files
- `.env` — Environment variables and secrets

NFS volumes are used for media-heavy services like Jellyfin and JDownloader.

## Common Commands

```bash
# Start a service
task up

# Stop a service
task down

# Update a service (pull + recreate)
task update

# Update all services
task update-all

# View logs
docker compose logs -f

# Shell into a running container
docker exec -it <container> sh
```

## Service Template

New services are scaffolded using [Copier](https://copier.readthedocs.io/):

```bash
task new
```

This prompts for the service name, folder, image, and stack name, then creates a ready-to-use service directory with `docker-compose.yml`, `.env.template`, and `README.md`.
