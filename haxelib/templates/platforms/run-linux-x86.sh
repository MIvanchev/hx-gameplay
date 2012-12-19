#!/bin/bash
if [ "$1" == "debug" ]; then suffix=-debug; fi
platforms/linux-x86/bin/game$suffix
