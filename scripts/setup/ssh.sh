#!/bin/bash
set -euo pipefail

echo "Install OpenSSH ----------------------------"

sudo apt-get install -y openssh-server
sudo systemctl enable ssh

echo "Generate Keys ------------------------------"
if [ ! -f ~/.ssh/id_ed25519 ]; then
  ssh-keygen -t ed25519 -b 4096 -f ~/.ssh/id_ed25519 -N ""
fi

echo "Install Done -------------------------------"
