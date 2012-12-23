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

suffix=
arg="$1"
if [ "$1" == "debug" ]; then
    suffix=-debug
    arg=
fi
if [ "$1" == "release" ]; then arg=; fi

cd platforms/linux-x86/bin || error "failed to change to platform directory"
rsync -rlpuq --delete ../../../res/ . || || error-cd "failed to copy resource files"
cp ../../../game.config game.config || error-cd "failed to copy application config"
game$suffix $arg $2 $3 $4 $5 $6 $7 $8 $9 || error-cd "application execution was unsuccessful"
cd ../../..
