#!/usr/bin/env bash

set -e
export BACKEND=LINUX
# export PLATFORM=gcw0
(cd ../module/libShake-0.3.0/; make clean; make)
make clean
cp ../module/libShake-0.3.0/obj/mipsel-gcw0-linux-uclibc/*/*.o  ../module/obj/
make
make opk


