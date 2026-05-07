# Homelab - Traefik

Reverse proxy with automatic SSL/TLS via Let's Encrypt.

## Configuration

### Environment Variables

| Variable | Description |
|----------|-------------|
| `SERVICE_HOSTNAME` | Container hostname |
| `SERVICE_NAME` | Container name |
| `TRAEFIK_HOSTNAME` | Dashboard hostname (e.g., traefik.example.com) |
| `ACME_EMAIL` | Let's Encrypt email for certificate notifications |

### Ports

| Port | Service |
|------|---------|
| 80 | HTTP (redirects to HTTPS) |
| 443 | HTTPS |

## Volumes

- `/var/run/docker.sock` - Docker socket for container discovery
- `./storage/letsencrypt` - SSL certificates

## First Setup

1. Create a docker network for other services: `docker network create homelab_network_proxy`
2. Copy `.env.template` to `.env` and fill in your values
3. Start the service: `task up`

## Usage

```bash
# Start service
task up

# Stop service
task down

# Update service
task update
```
