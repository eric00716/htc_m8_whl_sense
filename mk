#!/bin/bash          

echo "export TOP"
export TOP=/home/zaichron-lin/AndroidDev/AAtoolchains/linaro_toolchains_2014/arm-cortex_a15-linux-gnueabihf-linaro_4.9.1-2014.05

echo "PATH TOP"
export PATH=$TOP/home/zaichron-lin/AndroidDev/AAtoolchains/linaro_toolchains_2014/arm-cortex_a15-linux-gnueabihf-linaro_4.9.1-2014.05/bin:$PATH

echo "ARCH arm"
export ARCH=arm

echo "SUBARCH arm"
export SUBARCH=arm

echo "setup CROSS_COMPILE"
export CROSS_COMPILE=/home/zaichron-lin/AndroidDev/AAtoolchains/linaro_toolchains_2014/arm-cortex_a15-linux-gnueabihf-linaro_4.9.1-2014.05/bin/arm-eabi-

echo "Setting up m8whl_defconfig; kernel compilation commencing!!!"
make m8whl_defconfig && make clean && make ARCH=arm CROSS_COMPILE=/home/zaichron-lin/AndroidDev/AAtoolchains/linaro_toolchains_2014/arm-cortex_a15-linux-gnueabihf-linaro_4.9.1-2014.05/bin/arm-eabi- && ./dtb -o arch/arm/boot/dt.img -s 2048 -d "htc,project-id = <" -p ./scripts/dtc/ ./arch/arm/boot/
