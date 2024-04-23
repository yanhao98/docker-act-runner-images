#!/bin/bash -eux

docker build \
    --build-arg NODE_VERSION=16.0.0 \
    --build-arg PNPM_VERSION=9.0.0 \
    -t yanhao98/runner-images:pnpm9-node16 -f Dockerfile.pnpm .
docker run -it --rm yanhao98/runner-images:pnpm9-node16 bash --noprofile --norc -e -o pipefail -c "pnpm --version"
# docker run -it --rm yanhao98/runner-images:pnpm9-node16 uname -v
# docker run -it --rm yanhao98/runner-images:pnpm9-node16 cat /etc/os-release
# docker run -it --rm yanhao98/runner-images:pnpm9-node16 env
# docker run -it --rm yanhao98/runner-images:pnpm9-node16 cat /etc/debian_version # 12.5
