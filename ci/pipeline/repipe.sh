#!/usr/bin/env bash

set -eo pipefail -x

fly -t gk \
    set-pipeline -p traefik-release \
    -c traefik-pipeline.yml \
    -l config.yml -l secrets.yml
