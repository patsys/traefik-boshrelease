### Improvements

- Add support for running Traefik with BPM (see #6)

- Improve smoke tests (see #7) so that they can run along with the
  `cf-integration.yml` enabled, and test some backend/frontend basic setups.

- The default `cf-integration.yml` now uses the `ping` provider to implement a
  proper healthcheck on the Traefik dashboard, in order to avoid generating
  unnecessary `401` errors when healthcheck-ing the root path, that is
  password-protected.


### Notice

- BPM is now enabled in the default main deployment manifest.

- When BPM is activated, the Traefik log file is `traefik.stdout.log` instead
  of `traefik.log`.

- Smoke tests require `enable-api.yml` and `enable-rest.yml` to be enabled.

- the `cf-integration.yml` ops file now enables the REST provider, leading to
  a read/write (ans Digest Auth-protected) REST API to configure Traefik
  dynamically.
