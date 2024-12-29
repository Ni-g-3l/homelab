# Server Security

## SSH

SSH config file is located at **/etc/ssh/sshd_config**. Here you can setup some extra security ensure the connection to your server will be restricted to you.

### Keys

Use the following procedure to generate an SSH key pair on UNIX and UNIX-like systems:

Run the ssh-keygen command.

```bash
ssh-keygen -b 2048 -t rsa
```

The command prompts you to enter the path to the file in which you want to save the key.

A default path and file name are suggested in parentheses. For example: /$HOME/.ssh/id_rsa. To accept the default path and file name, press Enter. Otherwise, enter the required path and file name, and then press Enter.

The command prompts you to enter a passphrase.

The passphrase is not mandatory, however, it is recommended that you specify a passphrase to protect your private key against unauthorized use.

## Fail2Ban

Fail2Ban scans log files like /var/log/auth.log and bans IP addresses conducting too many failed login attempts. It does this by updating system firewall rules to reject new connections from those IP addresses, for a configurable amount of time.

1. Install fail2ban

```bash
sudo apt install fail2ban
```

2. Copy config file from repository : [Fail2ban Config](../config/fail2ban/jail.local)

```bash
cp ../config/fail2ban/jail.local /etc/fail2ban/jail.local
```

## UFW

UFW, or Uncomplicated Firewall, is an interface to iptables that is geared towards simplifying the process of configuring a firewall.

1. Install UFW

```bash
sudo apt install ufw
```

2. Setting Up Default Policies

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

3. Allow ssh service
```bash
sudo ufw allow ssh
```
4. Allow other connections (HTTPS, OpenVPN, etc...)

```bash
sudo ufw allow http
sudo ufw allow https
```