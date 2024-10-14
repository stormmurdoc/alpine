FROM alpine:3.20

LABEL org.opencontainers.image.authors="murdoc@storm-clan.de" \
      org.label-schema.name="Alpine base image" \
      org.label-schema.vendor="murdoc" \
      org.label-schema.schema-version="3.19"

# renovate: datasource=repology depName=alpine_3_20/curl versioning=loose
ENV CURL_VERSION="8.10.1-r0"
# renovate: datasource=repology depName=alpine_3_20/git versioning=loose
ENV GIT_VERSION="2.45.2-r0"
# renovate: datasource=repology depName=alpine_3_20/go versioning=loose
ENV GO_VERSION="1.22.8-r0"
# renovate: datasource=repology depName=alpine_3_20/bash versioning=loose
ENV BASH_VERSION="5.2.26-r0"
# renovate: datasource=repology depName=alpine_3_20/bash-completion versioning=loose
ENV BASH_COMPLETION_VERSION="2.12.0-r0"
# renovate: datasource=repology depName=alpine_3_20/lftp versioning=loose
ENV LFTP_VERSION="4.9.2-r6"
# renovate: datasource=repology depName=alpine_3_20/rsync versioning=loose
ENV RSYNC_VERSION="3.3.0-r0"
# renovate: datasource=repology depName=alpine_3_20/openssh versioning=loose
ENV OPENSSH_VERSION="9.7_p1-r4"
# renovate: datasource=repology depName=alpine_3_20/shadow versioning=loose
ENV SHADOW_VERSION="4.15.1-r0"

RUN apk add --no-cache \
    curl="$CURL_VERSION" \
    git="$GIT_VERSION" \
    go="$GO_VERSION" \
    bash="$BASH_VERSION" \
    bash-completion="$BASH_COMPLETION_VERSION" \
    lftp="$LFTP_VERSION" \
    rsync="$RSYNC_VERSION" \
    openssh="$OPENSSH_VERSION" \
    shadow="$SHADOW_VERSION" \
  && chsh -s /bin/bash root \
  && rm -rf /var/cache/apk/*

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
