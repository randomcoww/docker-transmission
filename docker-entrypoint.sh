#!/bin/sh

config_file=${CONFIG_FILE:-/etc/transmission/settings.json}
config_dir=${CONFIG_DIR:-/var/lib/transmission}

## relocate config_file so that 
## bnth config_dir and config_file may be mounted without conflict
ln -fs $config_dir/settings.json $config_file

## start
exec transmission-daemon \
  --config-dir $config_dir \
  $@ \
  --foreground \
  --log-error
