FROM alpine:latest

RUN set -x \
  \
  && apk add --no-cache \
    transmission-daemon \
    shadow

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
