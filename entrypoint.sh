#!/bin/sh
echo -en "$CONFIG" > /var/lib/transmission/settings.json

## start
exec transmission-daemon \
  --config-dir /var/lib/transmission \
  $@ \
  --foreground --log-error
