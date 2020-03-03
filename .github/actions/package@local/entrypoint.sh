#!/bin/sh

set -e # fail on error

mkdir release
cd release
cmake -DCMAKE_BUILD_TYPE=None -DCMAKE_INSTALL_PREFIX=/usr \
    -DBUILD_GPU=OFF -DBUILD_apps=OFF -DBUILD_examples=OFF \
    -DCMAKE_INSTALL_PREFIX=/usr ..
make
make install

