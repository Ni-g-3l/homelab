# Server Security

## SSH

### Generate SSH Key Pair

```bash
ssh-keygen -b 4096 -t ed25519 -f ~/.ssh/id_homelab -C "homelab key"
```

- Save the private key securely on your client machine
- Copy the public key to the server:
  ```bash
  ssh-copy-id -i ~/.ssh/id_homelab.pub user@server-ip
  ```

### SSH Configuration

Edit `/etc/ssh/sshd_config` and ensure these settings:

```
Port 22
PermitRootLogin no
PasswordAuthentication no
PubkeyAuthentication yes
MaxAuthTries 3
```

Restart SSH after changes:
```bash
sudo systemctl restart sshd
```

## Fail2Ban

Fail2Ban scans log files and bans IPs with too many failed login attempts.

### Installation

```bash
sudo apt install fail2ban
```

### Configuration

Copy the jail configuration file:

```bash
cp ../config/fail2ban/jail.local /etc/fail2ban/jail.local
sudo systemctl restart fail2ban
```

## UFW (Uncomplicated Firewall)

UFW provides a user-friendly interface for managing iptables firewall rules.

### Installation

```bash
sudo apt install ufw
```

### Default Policies

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

### Allow Services

```bash
# SSH (always allow before enabling firewall)
sudo ufw allow 22/tcp

# Web services
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

# OpenVPN
sudo ufw allow 1194/udp
```

### Enable Firewall

```bash
sudo ufw enable
sudo ufw status verbose
```
