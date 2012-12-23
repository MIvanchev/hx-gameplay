#!/bin/bash

hxcpp_debug=
mode=release
arg=$2
if [ "$2" == "debug" ]; then
    hxcpp_debug=-Ddebug
    mode=debug
    arg=
fi

if [ "$2" == "release" ]; then arg=; fi

platforms/$1/build.sh $hxcpp_debug && ./run-$1.sh $mode $arg $3 $4 $5 $6 $7 $8 $9
