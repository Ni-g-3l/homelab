# Operating System

## Ubuntu (Minimal)

Download last Ubuntu image from [Ubuntu.com](https://ubuntu.com/download/desktop), flash a USB disk, then on install choose "Only required software".

### Update packages

Run the following commands when you get an access to your new ubuntu user's home.

```bash
sudo apt update
sudo apt upgrade -Y
```

### Enable SSH connection 

1. First of all, install **net-tools**
```bash
sudo apt install net-tools
```

3. Install OpenSSH Server
```bash
sudo apt install openssh-server
```

4. Enable SSH on boot
```bash
sudo systemctl enable ssh
```

