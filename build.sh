#!/bin/sh -e

./clean.sh
clear
mkdir -p build/css
mcs src/Main.cs -out:build/css.exe
rm -rf build/css
mv build/css.exe build/css

if [ "${1}" = "--run" ]; then
    mono build/css
fi
