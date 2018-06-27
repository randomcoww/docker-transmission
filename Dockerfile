FROM alpine:edge

RUN set -x \
  \
  && apk add --no-cache transmission-daemon

COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
