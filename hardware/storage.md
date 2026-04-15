# Storage

## NFS Mount

NFS allows sharing directories across the network.

### Prerequisites

```bash
sudo apt install nfs-common
```

### Configuration

Add the following line to `/etc/fstab`:

```
<NFS_ADDRESS>:<NFS_VOLUME_PATH> <NFS_MOUNT_PATH> nfs rsize=8192,wsize=8192,timeo=14,intr,_netdev 0 0
```

| Option | Description |
|--------|-------------|
| `rsize/wsize` | Read/write buffer size |
| `timeo` | Timeout in deciseconds |
| `intr` | Allow interrupts on failed requests |
| `_netdev` | Wait for network before mounting |

### Apply Changes

```bash
sudo systemctl daemon-reload
sudo mount -a
```

### Verify Mount

```bash
df -h | grep nfs
mount | grep nfs
```
