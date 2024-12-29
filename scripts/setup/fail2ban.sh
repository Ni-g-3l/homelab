#!/bin/bash

echo "Install Fail2Ban ----------------------------"
apt install fail2ban -y

echo "Copy config ---------------------------------"

cp ../config/fail2ban/jail.local /etc/fail2ban/jail.local

echo "Install Done --------------------------------"