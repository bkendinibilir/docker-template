#!/bin/sh

cp /etc/service.conf.default /etc/service.conf

echo "setting1 = ${SERVICE_SETTINGS_1}" >> /etc/service.conf

if [ "$1" = 'rsnapshot' ]; then
  exec rsnapshot ${SERVICE_SETTINGS_2}
fi

exec "$@"