#!/bin/bash

# Have to build from source because apt is outdated
echo "Downloading ARM GCC Toolchain..."

curl -L https://developer.arm.com/-/media/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2 -o gcc-arm-none-eabi.tar.bz2
tar -xjf gcc-arm-none-eabi.tar.bz2
export PATH="${PATH}:/github/workspace/gcc-arm-none-eabi-10-2020-q4-major/bin"

# No linux option so have to extract from mac dmg
echo "Downloading VEX PROS's SDK"
curl -L https://content.vexrobotics.com/vexcode/v5code/VEXcodeProV5_2_0_1.dmg -o vexcode.dmg
7z x vexcode.dmg || :
7z x Payload~ ./VEXcode\ Pro\ V5.app/Contents/Resources/sdk -osdk_temp || :
mkdir ~/sdk
mv sdk_temp/VEXcode\ Pro\ V5.app/Contents/Resources/sdk/* ~/sdk
rm -rf _vex*_ _vex*_.dmg sdk_temp/ Payload~

echo "Building project..."
make --directory=$1
