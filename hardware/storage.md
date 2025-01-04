# Storage

## NFS 

First of all, if you want to mount NFS Storage in your Homelab, you need to install some packages.

```bash
sudo apt install nfs-common
```
Then update /etc/fstab file with following line

```
<NFS_ADDRESS>:<NFS_VOLUME_PATH> <NFS_MOUNT_PATH> nfs rsize=8192,wsize=8192,timeo=14,intr
```

Reload systemd deamon to use the updated fstab file.

```bash 
systemctl daemon-reload
```