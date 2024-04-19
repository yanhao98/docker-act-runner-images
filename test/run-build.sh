#!/bin/bash -e

docker build \
    --build-arg NODE_VERSION=16.20.0 \
    --build-arg PNPM_VERSION=9.0.0 \
    -t yanhao98/runner-images:pnpm9-node16 -f Dockerfile.pnpm .
docker run --rm yanhao98/runner-images:pnpm9-node16 pnpm --version
