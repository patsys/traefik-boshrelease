#!/usr/bin/env bash

set -ex

version=1.6.5

if [ ! -f "traefik-${version}_linux-amd64" -a ! -f "traefik-${version}_linux-amd64.gz" ]; then
    curl -L "https://github.com/containous/traefik/releases/download/v$version/traefik_linux-amd64" \
        -o "traefik-${version}_linux-amd64"
    echo "9e77c7664e316953e3f5463c323dffeeecbb35d0b1db7fb49f52e1d9464ca193  traefik-${version}_linux-amd64" \
        | shasum -a 256 --check
fi

if [ -f "traefik-${version}_linux-amd64" -a ! -f "traefik-${version}_linux-amd64.gz" ]; then
    gzip -9 "traefik-${version}_linux-amd64"
fi

bosh add-blob "traefik-${version}_linux-amd64.gz" "traefik/traefik-${version}_linux-amd64.gz"
