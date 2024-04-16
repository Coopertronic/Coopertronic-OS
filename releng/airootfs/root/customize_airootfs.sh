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
#locale-gen
pacman-key --init
pacman-key --recv-keys 515A202B640F3678
pacman-key --lsign 515A202B640F3678
pacman-key --recv-key D6D6FAA25E9A3E4ECD9FBDBEC93AF1698685AD8B
pacman-key --lsign-key D6D6FAA25E9A3E4ECD9FBDBEC93AF1698685AD8B
pacman-key --populate archlinux
pacman-key --populate ctos
pacman-key --populate trinity
pacman -Syy
#pacman -S ctos-calamares-settings --overwrite '*' --noconfirm
systemctl enable sddm
systemctl set-default graphical.target
systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable cups
systemctl enable sshd
