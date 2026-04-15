# 🏠 Homelab - OpenVPN

OpenVPN server for secure remote access.

## Configuration

### Environment Variables

| Variable | Description |
|----------|-------------|
| `SERVICE_HOSTNAME` | Container hostname |
| `SERVICE_NAME` | Container name |

### Ports

| Port | Protocol |
|------|----------|
| 1194 | UDP |

## Volumes

- `./storage/data:/etc/openvpn` - VPN configuration and keys

## Requirements

- Requires `NET_ADMIN` capability

## Usage

```bash
# Initialize VPN
task init url=<host url>

# Generate client key
task key mail=<user_mail>

# Start service
task up

# Stop service
task down

# Update service
task update
```
