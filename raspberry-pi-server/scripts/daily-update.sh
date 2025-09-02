#!/bin/bash

## Log start time
echo "Starting update: $(date)" >> /var/log/daily-update.log

## Update package lists and upgrade packages
apt update && apt -y upgrade

## Clean up
apt -y autoremove
apt -y autoclean

## Log reboot time
echo "Rebooting: $(date)" >> /var/log/daily-update.log

## Reboot the system
reboot
