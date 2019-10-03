#!/bin/bash

pushd Ubuntu-16.04 && ./build.sh && popd

pushd Ubuntu-18.04 && ./build.sh && popd

echo "Done."

