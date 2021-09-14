#!/bin/bash

qemu-img create c.img 2M

fdisk c.img << EOF
x
c
4
h
16
s
63
r
n
p
1
1
4
a
1
w
EOF

fdisk -l -u c.img
losetup -o 32256 /dev/loop1 c.img

mke2fs /dev/loop1
mount /dev/loop1 /mnt
cp -R bootdisk/* /mnt/
umount /mnt/
