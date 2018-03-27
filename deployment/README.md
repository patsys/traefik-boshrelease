# Base deployment

The `traefik-deployment.yml` base manifest desribes a classical 1-node
deployment of a Træfik reverse-proxy, that can be deployed in
[BOSH-Lite](https://bosh.io/docs/bosh-lite.html).

It enables a TLS endpoint with a custom certificate named `traefik_tls`,
signed by a custom Certificate Authority named `traefikCA`. When you need your
Certificate Authority, or your certificate to be used, upload it in CredHub
with the correct `//<director-name>/<deployment-name>/<variable-name>` path or
put it in your `--vars-store` file prior to deploying.


# Cloud Configs

## `cloud-config/cf-integration.yml`

This Operation File is an example of how you can tweak the
[BOSH-Lite default cloud config](https://github.com/cloudfoundry/cf-deployment/blob/master/iaas-support/bosh-lite/cloud-config.yml)
and use Træfik as the main reverse-proxy in front of Cloud Foundry routers in
[BOSH-Lite](https://bosh.io/docs/bosh-lite.html).


# Operations files

## `operations/cf-integration.yml`

This operations file is an example of how to tweak the base deployment and use
Træfik as the main reverse-proxy in front of Cloud Foundry routers in
[BOSH-Lite](https://bosh.io/docs/bosh-lite.html).


## `operations/disable-default-tls-certificate.yml`

When the default kind-of-self-signed TLS certificate doesn't suit your needs,
then use this operation file to remove it.


## `operations/enable-lets-encrypt.yml`

This operation file enables the automatic provisioning of Let's Encrypt TLS
certificates.


## `operations/enable-web-backend.yml`

This operation file enable the `web` backend for viewing the Træfik config
through a read-only web UI. This managemtn UI is protected by a Basic Auth
username and password.
