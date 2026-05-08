#!/bin/bash
set -euo pipefail

echo "Install UFW ----------------------------"
sudo apt-get install -y ufw

echo "Setting Up Default Policies ------------"

sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "Allow ssh service ----------------------"

sudo ufw allow ssh

echo "Allow other connections ----------------"

sudo ufw allow http
sudo ufw allow https

echo "Enable firewall ------------------------"

sudo ufw --force enable

echo "Install Done ---------------------------"
