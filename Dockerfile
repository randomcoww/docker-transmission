FROM alpine:latest

RUN set -x \
  \
  && apk add --no-cache transmission-daemon

COPY entrypoint.sh /

USER root:transmission
ENTRYPOINT ["/entrypoint.sh"]
