### Improvements

- Bump Træfik to the latest version [1.7.14](https://github.com/containous/traefik/releases/tag/v1.7.14)

- Add a new `traefik.api.digest_auth.realm` property to customize the realm used for API Digest Auth.

- Have the smoke tests fail when running them with `traefik.api.enabled` set to `false`, as they depend in the API to be enabled.
