# 🏠 Homelab - Heimdall

Application dashboard and bookmark manager.

## Configuration

### Environment Variables

| Variable | Description |
|----------|-------------|
| `SERVICE_HOSTNAME` | Container hostname |
| `SERVICE_NAME` | Container name |
| `TZ` | Timezone (default: Europe/Paris) |

## Volumes

- `./storage/config:/config` - Configuration storage

## Usage

```bash
# Start service
task up

# Stop service
task down

# Update service
task update
```