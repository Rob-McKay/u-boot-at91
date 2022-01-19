#!/bin/bash

export SOURCE_DATE_EPOCH=$(git log -1 --pretty=%ct)

docker run --rm -it -v $(pwd):/home/build --env SOURCE__DATE_EPOCH=$SOURCE_DATE_EPOCH rmckaykm/gcc-and-arm-gcc-setup:latest sh compile.sh
