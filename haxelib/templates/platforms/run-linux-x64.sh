#!/bin/bash
if [ "$1" == "debug" ]; then suffix=-debug; fi
platforms/linux-x64/bin/game$suffix
