#!/bin/bash -eux
IMAGE_NAME=yanhao98/runner-images:pnpm-local
docker build \
    --build-arg PNPM_VERSION=9.0.0 \
    -t $IMAGE_NAME -f Dockerfile.pnpm .

docker image inspect $IMAGE_NAME --format='{{.Size}}'
docker image history $IMAGE_NAME
docker run -it --rm $IMAGE_NAME bash --noprofile --norc -e -o pipefail -c "pnpm --version"
docker run -it --rm $IMAGE_NAME pnpm config list
# docker run -it --rm $IMAGE_NAME bash -c "ls -lhA --color=auto /pnpm"
# docker run -it --rm $IMAGE_NAME env
# docker run -it --rm $IMAGE_NAME du -sh /var/cache /var/log /var/lib/apt/lists /tmp /pnpm/store
