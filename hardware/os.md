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

### Post-Install Steps

```bash
# Set hostname
sudo hostnamectl set-hostname homelab

# Configure automatic security updates
sudo apt install -y unattended-upgrades
sudo dpkg-reconfigure -plow unattended-upgrades

# Install common tools
sudo apt install -y htop iotop iftop ncdu git ufw

# Set timezone
sudo timedatectl set-timezone Europe/Paris
```

### Quick Setup

After installing Ubuntu, run the bootstrap script to set up everything:

```bash
# Clone the repository
git clone <repo-url> ~/selfhosted-homelab
cd ~/selfhosted-homelab

# Run full setup
./scripts/bootstrap.sh all

# Or step by step
./scripts/bootstrap.sh
```
