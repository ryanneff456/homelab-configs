#!/bin/bash

## Used with cron to automatically update once a week while in sleep mode
sudo pacman -Syu --noconfirm
yay -Syu --noconfirm
sudo pacman -Rns $(pacman -Qdtq) --noconfirm
