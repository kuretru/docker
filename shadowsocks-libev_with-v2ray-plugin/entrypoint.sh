#!/bin/sh
# vim:sw=4:ts=4:et

ss-manager -c /config/config.json -u -D /var/run/ss-manager &

exec $@
