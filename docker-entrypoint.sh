#! /bin/sh

set -ux
export PATH=$PATH:/usr/src/app/compiled/grib2json/bin

TEMP_UID="${TEMP_UID:-1000}"
useradd -s /bin/false --no-create-home -u ${TEMP_UID} temp
chown -R temp:temp /usr/src/app
chown -R temp:temp /tmp/m2
exec gosu temp $@
