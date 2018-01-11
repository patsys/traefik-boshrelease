Træfik BOSH Release
====================

This [Bosh](https://bosh.io) release deploys a [Træfik](https://traefik.io/)
reverse-proxy.

Træefik is a modern and dynamic reverse-proxy, that is well known for
implementing on-demand [Let's Encrypt](https://letsencrypt.org/) certificates.

So the main use-case for this BOSH Release is to deploy Træfik in front of
your Cloud Foundry routers. This enable all your Cloud Foundry applications to
benefit from valid HTTPS certificates with absolutely no fuss. They are
provisioned on the fly, when the first web request is made. See the main
[deployment manifest](./deployment) and related operations files for Cloud
Foundry integration.
