# 🏠 Homelab - Watchtower

Automatic Docker container updates with Discord notifications.

## Configuration

### Environment Variables

| Variable | Description |
|----------|-------------|
| `SERVICE_HOSTNAME` | Container hostname |
| `SERVICE_NAME` | Container name |
| `TZ` | Timezone (default: Europe/Paris) |
| `DISCORD_CHANNEL` | Discord channel ID |
| `DISCORD_TOKEN` | Discord bot token |

### Features

- Automatic cleanup of old images
- Discord notifications for updates
- Detailed update reports

## Volumes

- `/var/run/docker.sock:/var/run/docker.sock` - Docker socket (required for monitoring)

## Usage

```bash
# Start service
task up

# Stop service
task down

# Update service
task update
```