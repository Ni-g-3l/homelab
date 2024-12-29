#!/bin/bash

echo "Install OpenSSH ----------------------------"

sudo apt install openssh-server
sudo systemctl enable ssh

echo "Generate Keys ------------------------------"
ssh-keygen -b 2048 -t rsa

echo "Install Done -------------------------------"