FROM alpine:3.18@sha256:25fad2a32ad1f6f510e528448ae1ec69a28ef81916a004d3629874104f8a7f70

LABEL org.opencontainers.image.authors="murdoc@storm-clan.de" \
      org.label-schema.name="Alpine base image" \
      org.label-schema.vendor="murdoc" \
      org.label-schema.schema-version="3.18"

# renovate: datasource=repology depName=alpine_3_18/curl versioning=loose
ENV CURL_VERSION="8.1.2-r0"
# renovate: datasource=repology depName=alpine_3_18/git versioning=loose
ENV GIT_VERSION="2.40.1-r0"
# renovate: datasource=repology depName=alpine_3_18/go versioning=loose
ENV GO_VERSION="1.20.5-r0"
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
