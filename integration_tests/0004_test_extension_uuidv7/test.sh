#!/bin/bash

plugins.uninstall foobar >/dev/null 2>&1
rm -Rf foobar*

set -x
set -e

bootstrap_plugin.py create --no-input --make --install --delete foobar

source "${MFBASE_HOME}/share/sqltools.sh"

cat >/tmp/test_extension_uuidv7.sql <<EOF
SELECT uuid_v7_to_timestamptz('01927bd0-8502-7400-a273-c28152787dc0');
EOF
psql -U plugin_foobar -h ${MFMODULE_RUNTIME_HOME}/var -p ${MFBASE_POSTGRESQL_PORT} -f /tmp/test_extension_uuidv7.sql plugin_foobar
#batch_psql "/tmp/test_extension_uuidv7.sql" "test extension uuidv7" plugin_foobar plugin_foobar

plugins.uninstall foobar
rm -f /tmp/test_extension_uuidv7.sql
rm -Rf foobar*
