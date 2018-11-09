#!/bin/dumb-init /bin/sh
set -e

VAULT_CONFIG_DIR=/vault/config

if [ -n "$VAULT_LOCAL_CONFIG" ]; then
	echo "$VAULT_LOCAL_CONFIG" | envsubst > "$VAULT_CONFIG_DIR/local.json"
fi

if [ "${1:0:1}" = '-' ]; then
    set -- vault "$@"
fi

exec "$@"
