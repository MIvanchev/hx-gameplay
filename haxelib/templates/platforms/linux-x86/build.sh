#!/bin/bash

error()
{
    echo "Build failed."
    exit 1
}

error_cd()
{
    cd ../../..
	error
}

haxelib run hx-gameplay process-build-files linux-x86 || error
cd platforms/.obj/linux-x86 || error
rm -f game game-debug || error_cd
haxelib run hxcpp Build.xml $1 $2 $3 $4 $5 $6 $7 $8 $9 || error_cd
cp game ../../linux-x86/bin || cp game-debug ../../linux-x86/bin || error_cd
cd ../../..
