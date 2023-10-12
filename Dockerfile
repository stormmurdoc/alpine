FROM alpine:3.18@sha256:48d9183eb12a05c99bcc0bf44a003607b8e941e1d4f41f9ad12bdcc4b5672f86

LABEL org.opencontainers.image.authors="murdoc@storm-clan.de" \
      org.label-schema.name="Alpine base image" \
      org.label-schema.vendor="murdoc" \
      org.label-schema.schema-version="3.18"

# renovate: datasource=repology depName=alpine_3_18/curl versioning=loose
ENV CURL_VERSION="8.4.0-r0"
# renovate: datasource=repology depName=alpine_3_18/git versioning=loose
ENV GIT_VERSION="2.40.1-r0"
# renovate: datasource=repology depName=alpine_3_18/go versioning=loose
ENV GO_VERSION="1.20.9-r0"
# renovate: datasource=repology depName=alpine_3_18/bash versioning=loose
ENV BASH_VERSION="5.2.15-r5"
# renovate: datasource=repology depName=alpine_3_18/bash-completion versioning=loose
ENV BASH_COMPLETION_VERSION="2.11-r5"
# renovate: datasource=repology depName=alpine_3_18/lftp versioning=loose
ENV LFTP_VERSION="4.9.2-r5"
# renovate: datasource=repology depName=alpine_3_18/rsync versioning=loose
ENV RSYNC_VERSION="3.2.7-r4"
# renovate: datasource=repology depName=alpine_3_18/openssh versioning=loose
ENV OPENSSH_VERSION="9.3_p2-r0"

RUN apk add --no-cache \
    curl="$CURL_VERSION" \
    git="$GIT_VERSION" \
    go="$GO_VERSION" \
    bash="$BASH_VERSION" \
    bash-completion="$BASH_COMPLETION_VERSION" \
    lftp="$LFTP_VERSION" \
    rsync="$RSYNC_VERSION" \
    openssh="$OPENSSH_VERSION" \
  && rm -rf /var/cache/apk/*

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
