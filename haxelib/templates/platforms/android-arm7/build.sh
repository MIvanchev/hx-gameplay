#!/bin/bash

error()
{
    echo "Build error: $1." 1>&2
    exit 1
}

error_cd()
{
    cd ../../..
	error $1
}

haxelib run hx-gameplay process-build-files android-arm7 || error "failed to process build files"
cd platforms/.obj/android-arm7 || error "failed to change current directory"
rm -f libgame*.so || error_cd "failed to clean previous build files"
haxelib run hxcpp Build.xml -Dandroid -DNDKV7 -DHXCPP_ARMV7 -Dandroid-9 $1 $2 $3 $4 $5 $6 $7 $8 $9 || error_cd "failed to compile application source"
mkdir -p ../../android-arm7/bin/out || error_cd "failed to create output directory"
cp libgame-7.so ../../android-arm7/bin/out/libgame.so || cp libgame-debug-7.so ../../android-arm7/bin/out/libgame-debug.so || error_cd "failed to copy application shared object"
cd ../../..
