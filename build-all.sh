#!/bin/bash

pushd Ubuntu-20.04 && ./build.sh && popd

pushd Ubuntu-22.04 && ./build.sh && popd

pushd Ubuntu-22.04-MXE && ./build.sh && popd

pushd Ubuntu-24.04 && ./build.sh && popd

echo "Done."

