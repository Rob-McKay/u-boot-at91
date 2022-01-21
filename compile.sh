#!/bin/bash
export CROSS_COMPILE="arm-none-eabi-"

rm -rf build-RS20n
mkdir build-RS20n

# remove Remove all generated files + config + various backup files
# make distclean || exit $?
make O=build-RS20n distclean || exit $?

#make sama5d3_xplained_nandflash_defconfig || exit $?
make O=build-RS20n RS20n-sama5d3_nandflash_defconfig || exit $?

make O=build-RS20n  all || exit $?

#mv u-boot.bin u-boot-RS20n.bin
#mv u-boot.map u-boot-RS20n.map

