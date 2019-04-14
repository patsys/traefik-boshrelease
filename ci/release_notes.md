### Improvements

- Bump Træfik to the latest version 1.7.10 (codename “Maroilles”, a delicious semi-liquid creamy French cheese, yummy!)

### Notice

- The `web` backend and related properties are now deprecated starting with this release version. You must use the `traefik.api.*` properties instead.
- The `cf-integration.yml` ops file has migrated to using the `traefik.api.*` properties, using a TLS backend instead of an HTTP backend in the previous version.
