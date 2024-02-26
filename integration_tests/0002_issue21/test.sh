#!/bin/bash

plugins.uninstall foobar >/dev/null 2>&1
rm -Rf foobar*

set -x
set -e

bootstrap_plugin.py create --no-input --make --install --delete foobar

source "${MFBASE_HOME}/share/sqltools.sh"

cat >/tmp/postgis.sql <<EOF
SELECT ST_IsValid(ST_GeomFromText('LINESTRING(0 0, 1 1)')) As good_line,
        ST_IsValid(ST_GeomFromText('POLYGON((0 0, 1 1, 1 2, 1 1, 0 0))')) As bad_poly;
EOF
batch_psql "/tmp/postgis.sql" "test postgis" plugin_foobar plugin_foobar

plugins.uninstall foobar
rm -f /tmp/postgis.sql
rm -Rf foobar*
