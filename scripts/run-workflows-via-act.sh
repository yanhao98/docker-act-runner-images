#!/bin/bash -eu
ACT_COMMAND="act --pull=false -P ubuntu-latest=catthehacker/ubuntu:act-latest --container-architecture linux/arm64"

time $ACT_COMMAND --workflows .github/workflows/build-and-push-pnpm.yml
echo -e "🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨\n\n\n"

time $ACT_COMMAND --workflows .github/workflows/build-and-push-gitea-act-runner.yml
echo -e "🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨\n\n\n"
