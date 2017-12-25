#!/bin/sh
echo -en "$CONFIG" > /var/lib/transmission/settings.json

## start
exec sg transmission -c "transmission-daemon \
  --config-dir /var/lib/transmission \
  $@ \
  --foreground \
  --log-error"
