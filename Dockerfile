FROM alpine:latest

RUN set -x \
  \
  && apk add --no-cache transmission-daemon

COPY entrypoint.sh /

USER 0:101
ENTRYPOINT ["/entrypoint.sh"]
