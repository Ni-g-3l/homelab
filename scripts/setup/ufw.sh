#!/bin/bash

echo "Install UFW ----------------------------"
apt install ufw -y

echo "Setting Up Default Policies ------------"

ufw default deny incoming
ufw default allow outgoing

echo "Allow ssh service ----------------------"

ufw allow ssh

echo "Allow other connections ----------------"

ufw allow http
ufw allow https

echo "Install Done ---------------------------"
