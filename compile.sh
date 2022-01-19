#!/bin/bash
export CROSS_COMPILE="arm-none-eabi-"

# remove Remove all generated files + config + various backup files
# make clean || exit $?

make sama5d3_xplained_nandflash_defconfig || exit $?

make
