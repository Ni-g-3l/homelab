# 🏠 Homelab - JDownloader

Download manager for file hosting sites.

## Configuration

### Environment Variables

| Variable | Description |
|----------|-------------|
| `SERVICE_HOSTNAME` | Container hostname |
| `SERVICE_NAME` | Container name |

## Volumes

- `./storage/config:/config` - Configuration storage
- `./storage/output:/output` - Download output directory

## Usage

```bash
# Start service
task up

# Stop service
task down

# Update service
task update
```