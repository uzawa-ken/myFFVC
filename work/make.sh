#!/bin/bash

cd /home/uzawaken/FFV/ffvc_package_latest/build/FFVC/bin
rm ffvc-mpi

cd /home/uzawaken/FFV/ffvc_package_latest/FFVC-3.2.3/build
make
make install
