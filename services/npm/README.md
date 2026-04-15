# 🏠 Homelab - Nginx Proxy Manager

Reverse proxy with SSL/TLS support and easy web UI.

## Configuration

### Environment Variables

| Variable | Description |
|----------|-------------|
| `SERVICE_HOSTNAME` | Container hostname |
| `SERVICE_NAME` | Container name |

### Ports

| Port | Service |
|------|---------|
| 80 | HTTP |
| 443 | HTTPS |
| 81 | Admin UI |

## Volumes

- `./storage/data:/data` - NPM data
- `./storage/letsencrypt:/etc/letsencrypt` - SSL certificates

## First Setup

1. Access the admin UI at `http://<host>:81`
2. Default credentials: `admin@example.com` / `changeme`
3. Create a docker network for other services: `docker network create homelab_network_proxy`

## Usage

```bash
# Start service
task up

# Stop service
task down

# Update service
task update
```
