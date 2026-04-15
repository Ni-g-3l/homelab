# 🏠 Homelab - Jellyfin

Free software media system for streaming movies, TV shows, music, and more.

## Configuration

### Environment Variables

| Variable | Description |
|----------|-------------|
| `SERVICE_HOSTNAME` | Container hostname |
| `SERVICE_NAME` | Container name |

## Volumes

- `./storage/media:/data/media` - Media files
- `./storage/cache:/cache` - Transcoding cache
- `./config:/config` - Application configuration

## Usage

```bash
# Start service
task up

# Stop service
task down

# Update service
task update
```