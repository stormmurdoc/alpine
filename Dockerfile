FROM alpine:3.18@sha256:c5c5fda71656f28e49ac9c5416b3643eaa6a108a8093151d6d1afc9463be8e33

LABEL org.opencontainers.image.authors="murdoc@storm-clan.de" \
      org.label-schema.name="Alpine base image" \
      org.label-schema.vendor="murdoc" \
      org.label-schema.schema-version="3.18"

# renovate: datasource=repology depName=alpine_3_18/curl versioning=loose
ENV CURL_VERSION="8.2.1-r0"
# renovate: datasource=repology depName=alpine_3_18/git versioning=loose
ENV GIT_VERSION="2.40.1-r0"
# renovate: datasource=repology depName=alpine_3_18/go versioning=loose
ENV GO_VERSION="1.20.7-r0"
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
