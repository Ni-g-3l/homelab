#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$(dirname "$SCRIPT_DIR")/config"

echo "Install Fail2Ban ----------------------------"
sudo apt-get install -y fail2ban

echo "Copy config ---------------------------------"
sudo cp "$CONFIG_DIR/fail2ban/jail.local" /etc/fail2ban/jail.local
sudo systemctl restart fail2ban

echo "Install Done --------------------------------"
