#!/bin/sh

if [ -n "$TRANSMISSION_LOCAL_CONFIG" ]; then
  echo -en "$TRANSMISSION_LOCAL_CONFIG" > /var/lib/transmission/settings.json
fi

## start
exec transmission-daemon \
  --config-dir /var/lib/transmission \
  $@ \
  --foreground \
  --log-error
