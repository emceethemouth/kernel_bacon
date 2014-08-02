#!/bin/bash
#
#  TheArkenstone
#

clear

echo ""
echo ""
echo "Start kernel build"
echo ""
echo ""

git checkout bacon

make clean
make mrproper
export ARCH=arm
export CROSS_COMPILE=~/tmp/arm-eabi-4.9/bin/arm-eabi-
export ENABLE_GRAPHITE=true
make hammerhead_defconfig
time make -j8 2>&1 | tee kernel.log