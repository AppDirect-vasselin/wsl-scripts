#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -f "$SCRIPT_DIR/config.sh" ]; then
    source "$SCRIPT_DIR/config.sh"
else
    echo "Erreur : config.sh n'existe pas. Copiez config.sh.example en config.sh et modifiez-le."
    exit 1
fi

EXCLUDE_FILE="$SCRIPT_DIR/rsync.exclude"

rsync --rsh="ssh -i ~/.ssh/webdev.key" -trWv --progress --delete-delay --chmod=Du=rwx,Dgo=rx,Fu=rw,Fog=r --exclude-from=$EXCLUDE_FILE /www/itcloud-web-platform/ "$DEV_USERNAME@$DEV_IP":"/var/www/html/$DEV_ZONE_PATH/httpdocs/"
