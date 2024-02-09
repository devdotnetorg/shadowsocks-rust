#!/bin/bash

# Install buildx
# Post https://devdotnet.org/post/sborka-docker-konteinerov-dlya-arm-arhitekturi-ispolzuya-buildx/

# $ chmod +x buildx-out.sh
# $ ./buildx-out.sh

set -e

echo "Start BUILDX"

# build
echo "BUILD: sswinservice"
docker buildx build --platform linux/amd64 -f Dockerfile.alpine.sswinservice \
    --target=artifact --output type=local,dest=out/ -t devdotnetorg/shadowsocks-rust:sswinservice .

echo "BUILDX END"
