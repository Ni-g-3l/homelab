# Operating System

## Ubuntu (Minimal)

Download the latest Ubuntu image from [Ubuntu.com](https://ubuntu.com/download/server), flash a USB disk, then choose "Minimal" installation during setup.

### Update Packages

```bash
sudo apt update && sudo apt upgrade -y
```

### Enable SSH

1. Install net-tools
   ```bash
   sudo apt install net-tools
   ```

2. Install OpenSSH Server
   ```bash
   sudo apt install openssh-server
   ```

3. Enable SSH on boot
   ```bash
   sudo systemctl enable ssh
   ```

4. Verify SSH is running
   ```bash
   sudo systemctl status ssh
   ```
