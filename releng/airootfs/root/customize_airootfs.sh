#!/bin/bash

set -e -u

sed -i 's/#\(en_GB\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

usermod -s /usr/bin/zsh root
cp -aT /etc/skel /root/
chmod 700 /root
#   unset the root password
passwd -d root

#sed -i 's/#\(PermitRootLogin \).\+/\1yes/' /etc/sshd_config
sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist
#localectl set-keymap --no-convert uk
locale-gen
systemctl enable sddm
systemctl set-default graphical.target
systemctl enable NetworkManager
systemctl enable bluetooth
#systemctl enable org.cups.cupsd
systemctl enable sshd

