#! /bin/bash

mkdir tftp
cp ../bb_soft/build/linux/arch/arm/boot/zImage tftp
cp ../bb_soft/build/linux/arch/arm/boot/dts/am335x-boneblack.dtb tftp
cp ../bb_soft/build/busybox/uRamdisk tftp
