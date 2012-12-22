#!/bin/bash

hxcpp_debug=
debug=
arg=$2
if [ "$2" == "debug" ]; then
    hxcpp_debug=-Ddebug
    debug=debug
    arg=
fi

platforms/$1/build.sh $hxcpp_debug && run-$1.bat $debug $arg %3 %4 %5 %6 %7 %8 %9
