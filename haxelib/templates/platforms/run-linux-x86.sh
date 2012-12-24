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

config=../../../game.config

cd platforms/linux-x86/bin || error "failed to change to platform directory"
if [ -f $config ]; then
    cp $config game.config || error_cd "failed to copy application config"
else
    rm -f game.config || error_cd "failed to remove out-dated application config"
fi
rsync -rlpuq --delete ../../../res/ res || error_cd "failed to copy resource files"
./game$suffix $arg $2 $3 $4 $5 $6 $7 $8 $9 || error_cd "application execution was unsuccessful"
cd ../../..
