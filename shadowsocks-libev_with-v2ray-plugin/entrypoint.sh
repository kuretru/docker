#!/bin/sh

ss-manager -c /config/config.json -u --manager-address 127.0.0.1:6001 -D /var/run/ss-manager &

exec "$@"
