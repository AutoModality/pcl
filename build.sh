#!/bin/bash
BUILD_DIR="build"
rm -rf "$BUILD_DIR"
mkdir "$BUILD_DIR" && cd "$BUILD_DIR"
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j2
sudo make -j2 install