# 🏠 Homelab - Fusion

RSS reader and feed aggregator.

## Configuration

### Environment Variables

| Variable | Description |
|----------|-------------|
| `SERVICE_HOSTNAME` | Container hostname |
| `SERVICE_NAME` | Container name |

## Volumes

- `./storage/data:/data` - Media data storage

## Usage

```bash
# Start service
task up

# Stop service
task down

# Update service
task update
```