### Improvements

- Bump Træfik to version 1.7.9 codename “Maroilles” (a delicious semi-liquid creamy French cheese, yummy!)
- Introduce the `traefik.api.*` properties, as a replacement for `traefik.web.*` properties that are now deprecated.
- When `traefik.api.enabled` is set to `true`, the traefik API (as new [`[api]` config section](https://docs.traefik.io/configuration/api/)) is enabled, with dashboard, ping and basic Prometheus metrics configurations enabled. These are served on a TLS-enabled endpoint (no more HTTP is possible) protected by a Digest Auth (instead of a Basic Auth formerly with the now-deprecated [web backend](https://docs.traefik.io/configuration/backends/web/)).
- Whenever a new Traefik binary is released, then a new PR is automatically created by some Concourse pipeline!
- Use SHA-1 hashes for Basic Auth passwords in Traefik config file, instead of MD5.

### Notice

- The `web` backend and related properties are now deprecated starting with this release version. You must use the `traefik.api.*` properties instead.
- The `cf-integration.yml` ops file has migrated to using the `traefik.api.*` properties, using a TLS backend instead of an HTTP backend in the previous version.
