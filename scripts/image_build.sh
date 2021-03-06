#!/bin/sh

# My boards :: imx6ull14x14evk , imx6qsabresd
# My boards :: imx8qmmek , imx8mqevk , imx8mnevk , imx8mmevk , imx8mpevk

TARGET_DEVICE=imx8mqevk
GRPH_FRONTEND=xwayland
DISTRO=fsl-imx-$GRPH_FRONTEND MACHINE=$TARGET_DEVICE source imx-setup-release.sh -b $TARGET_DEVICE-$GRPH_FRONTEND

# Add essential tools to the build
sh ./overlay.sh

echo "\n****"
echo "run ..."
echo "bitbake core-image-base"
echo "****\n"
