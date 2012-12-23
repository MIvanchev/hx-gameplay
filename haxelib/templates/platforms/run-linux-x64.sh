#!/bin/bash
suffix=
arg="$1"
if [ "$1" == "debug" ]; then
    suffix=-debug
    arg=
fi
if [ "$1" == "release" ]; then arg=; fi
platforms/linux-x64/bin/game$suffix $arg $2 $3 $4 $5 $6 $7 $8 $9
