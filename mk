#!/bin/bash          

echo "export TOP"
export TOP=/home/zaichron-lin/AndroidDev/AAtoolchains/linaro-4.10_UBER

echo "PATH TOP"
export PATH=$TOP/home/zaichron-lin/AndroidDev/AAtoolchains/linaro-4.10_UBER/arm-eabi/bin:$PATH

echo "ARCH arm"
export ARCH=arm

echo "SUBARCH arm"
export SUBARCH=arm

echo "setup CROSS_COMPILE"
export CROSS_COMPILE=/home/zaichron-lin/AndroidDev/AAtoolchains/linaro-4.10_UBER/

echo "Setting up m8whl_defconfig; kernel compilation commencing!!!"
make m8whl_defconfig && make clean && make ARCH=arm CROSS_COMPILE=/home/zaichron-lin/AndroidDev/AAtoolchains/linaro-4.10_UBER/bin/arm-eabi-
