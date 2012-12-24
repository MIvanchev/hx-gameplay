#!/bin/bash

error()
{
    echo "Error: $1." 1>&2
    exit 1
}

error_cd()
{
    cd ../../..
    error $1
}

lib=libgame.so
arg="$1"
if [[ "$1" == "debug" ]]; then
    lib=libgame-debug.so
    arg=
fi
if [[ "$1" == "release" ]]; then arg=; fi

cd platforms/android-arm7/bin || error "failed to change currect directory"
mkdir -p libs/armeabi-v7a || error "failed to create output directory"
cp "out/$lib" libs/armeabi-v7a/libapplication.so || error "failed to copy application shared object"
rm -Rf gen || error "failed to delete directory with auto-generated files"
ant $arg $2 $3 $4 $5 $6 $7 $8 $9 -Dsdk.dir=$ANDROID_HOME || error "failed to build application package"
cd ..
