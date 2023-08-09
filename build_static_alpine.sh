#!/bin/sh

# apk update
# apk add build-base cmake openssl openssl-dev openssl-libs-static linux-headers
# openssl static library doesn't exist on arch linux, so turn of in that case.
cmake -B./build -DCMAKE_BUILD_TYPE=RELEASE -DSTATIC_BINARY=true .
make -C ./build -j $(nproc)
