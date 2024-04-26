#!/bin/bash -eux
ACT_COMMAND="act --pull=false -P ubuntu-latest=catthehacker/ubuntu:act-latest --container-architecture linux/arm64 --secret-file act.secrets.ini"

time $ACT_COMMAND --job build-and-push-pnpm
echo -e "🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨\n\n\n"

time $ACT_COMMAND --job build-and-push-gitea-act-runner
echo -e "🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨🧨\n\n\n"
