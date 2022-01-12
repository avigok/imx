#!/usr/bin/env sh

# setup arch [arm/arm64]
export ARCH=arm64

# add yocto SDK cross-compiler to path
export PATH=$PATH:/mnt/work/nxp/sdk/sysroots/x86_64-pokysdk-linux/usr/bin/aarch64-poky-linux

# set up cross compiler prefix
export CROSS_COMPILE=aarch64-poky-linux-

# point to the correct linux kernel sources used to build the target machine
export KERNELDIR=/mnt/work/nxp/yocto-bsp/build-toolchain/tmp/work/imx8qmmek-poky-linux/linux-imx/5.4-r0/build

# build kernel modules and apps
make build -j$(nproc)
