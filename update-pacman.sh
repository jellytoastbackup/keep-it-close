#!/bin/bash

sudo curl -o /etc/pacman.d/mirrorlist https://www.archlinux.org/mirrorlist/all
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup
sudo sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.backup
sudo rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist
sudo pacman -Syu
