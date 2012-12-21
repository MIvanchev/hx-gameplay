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

mode=debug
lib=libgame.so
args=
for arg in "$@"; do
    if [[ "$arg" == "release" || "$arg" == "debug" ]]; then
        mode=
    fi

    if [ "$arg" = "lib:debug" ]; then
        lib=libgame-debug.so
    else
        args="$args $arg"
    fi
done

cd platforms/android-arm7 || error "failed to change currect directory"
mkdir -p libs || error "failed to create output directory"
cp "out/$lib" libs/libapplication.so || error "failed to copy application shared object"
rm -Rf gen || error "failed to delete directory with auto-generated files"
ant $mode $args -Dsdk.dir=$ANDROID_HOME || error "failed to build application package"
cd ..
