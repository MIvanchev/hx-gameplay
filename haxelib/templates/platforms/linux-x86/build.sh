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

haxelib run hx-gameplay process-build-files linux-x86 || error "failed to process build files"
cd platforms/.obj/linux-x86 || error "failed to change current directory"
rm -f game game-debug || error_cd "failed to clean previous build files"
haxelib run hxcpp Build.xml -Dlinux $1 $2 $3 $4 $5 $6 $7 $8 $9 || error_cd "failed to compile application source"
mkdir -p ../../linux-x86/bin || error_cd "failed to create output directory"
cp game ../../linux-x86/bin/ || cp game-debug ../../linux-x86/bin/ || error_cd "failed to copy executable files"
cd ../../..
