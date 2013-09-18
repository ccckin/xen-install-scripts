#!/bin/sh 
dd if=/dev/null of=arch.img bs=1M seek=2048 count=1
mkfs.ext4 arch.img
mkdir install
sudo mount -o loop arch.img install
mkdir -p install/{dev,proc,sys} install/var/lib/pacman install/var/cache/pacman/pkg
sudo mount -o bind /dev install/dev
sudo mount -t proc none install/proc
sudo mount -o bind /sys install/sys
sudo pacman -Sy -r install --cachedir install/var/cache/pacman/pkg -b install/var/lib/pacman base
sudo cp -R /etc/pacman* install/etc
sudo cp /etc/resolv.conf install/etc
sudo cp fstab install/etc 
sudo cp inittab install/etc 
sudo umount install/dev 
sudo umount install/proc 
sudo umount install/sys 
sudo umount install
