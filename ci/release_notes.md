### Improvements

- Bump Træfik to the latest version 1.7.11

- Add a basic `smoke-tests` errand that tests the API dashboard with
  authentication (this requires the `enable-api.yml` ops file), and which is
  now run in all `testflight` Concourse jobs.

### Notice

- The `rename-deployment.yml` and `rename-network.yml` ops files have been
  inlined in the main deployment manifest, and removed.

- The `web` backend and related properties are deprecated since `v1.3.0`.
  Please migrate to the `traefik.api.*` properties instead.
