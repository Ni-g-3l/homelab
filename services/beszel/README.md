# 🏠 Homelab - Beszel

Lightweight server monitoring dashboard with agent support.

## Configuration

### Environment Variables

| Variable | Description |
|----------|-------------|
| `SERVICE_HOSTNAME` | Hostname for the Beszel server |
| `SERVICE_NAME` | Container name |
| `SERVICE_AGENT_HOSTNAME` | Hostname for the Beszel agent |
| `SERVICE_AGENT_NAME` | Agent container name |
| `SERVICE_AGENT_PORT` | Agent port |
| `SERVICE_AGENT_KEY` | Agent authentication key |

## Services

- **Beszel**: Main monitoring server (ports handled by reverse proxy)
- **Beszel Agent**: Docker monitoring agent on each host

## Volumes

- `./storage/data:/beszel_data` - Beszel data storage

## Usage

```bash
# Start services
task up

# Stop services
task down

# Update services
task update
```