#!/bin/sh

## Working path for transmission
config_dir=${CONFIG_DIR:-/var/lib/transmission}
## Mount external volume here and symlink paths to config_dir
mount_dir=${MOUNT_DIR:-/etc/transmission}

## Preserve this data in mounted volume
mkdir -p $mount_dir/resume
mkdir -p $mount_dir/torrents
ln -sf $mount_dir/resume $config_dir/resume
ln -sf $mount_dir/torrents $config_dir/torrents

## Config file must be at $config_dir/settings.json
## This may be mounted from configMap

## Start
exec transmission-daemon \
  $@ \
  --config-dir $config_dir \
  --foreground \
  --log-error
