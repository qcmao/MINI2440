#!/bin/bash
make distclean

make mini2440_defconfig

make

cd arch/arm/boot/
mkimage -n linux-4.9.2 -A arm -O linux -T kernel -C none -a 0x30008000 -e 0x30008040 -n mini2440 -d zImage uImage
