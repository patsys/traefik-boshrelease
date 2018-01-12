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

**Update:**

Since 2018-01-09, Let's Encrypt has shut down the TLS-SNI validation
types for all new accounts. This temporarily compromises the Automated
Certificate Management (ACME) implementation of Træfik. As a
workaround, the DNS validation method can be used instead.

See [original blog post](1) and [update post](2) for more details.

[1]: https://community.letsencrypt.org/t/2018-01-11-update-regarding-acme-tls-sni-and-shared-hosting-infrastructure/50188
[2]: https://community.letsencrypt.org/t/2018-01-09-issue-with-tls-sni-01-and-shared-hosting-infrastructure/49996



Contributing
------------

Please feel free to submit issues and pull requests.



Author and License
------------------

Copyright © 2018, Benjamin Gandon

Like the rest of BOSH, the Træfik BOSH release is released under the terms
of the [Apache 2.0 license](http://www.apache.org/licenses/LICENSE-2.0).

<!--
# Local Variables:
# indent-tabs-mode: nil
# End:
-->
