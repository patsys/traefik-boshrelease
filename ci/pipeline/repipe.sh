#!/usr/bin/env bash

set -eo pipefail -x

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

pushd "${SCRIPT_DIR}" > /dev/null

fly -t gk \
    set-pipeline -p traefik-bump \
    -c traefik-pipeline.yml \
    -l config.yml -l secrets.yml

popd > /dev/null
