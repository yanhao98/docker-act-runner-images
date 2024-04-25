#!/bin/bash -eux
docker build \
    --build-arg NODE_VERSION=16.0.0 \
    --build-arg PNPM_VERSION=9.0.0 \
    -t yanhao98/runner-images:pnpm9-node16 -f Dockerfile.pnpm .

docker image inspect yanhao98/runner-images:pnpm9-node16 --format='{{.Size}}'
docker image history yanhao98/runner-images:pnpm9-node16
docker run -it --rm yanhao98/runner-images:pnpm9-node16 bash --noprofile --norc -e -o pipefail -c "pnpm --version"
docker run -it --rm yanhao98/runner-images:pnpm9-node16 pnpm store path
# docker run -it --rm yanhao98/runner-images:pnpm9-node16 bash -c "ls -lhA --color=auto /pnpm"
# docker run -it --rm yanhao98/runner-images:pnpm9-node16 env
# docker run -it --rm yanhao98/runner-images:pnpm9-node16 du -sh /var/cache /var/log /var/lib/apt/lists /tmp /pnpm/store
