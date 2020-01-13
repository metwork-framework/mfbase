#!/bin/bash

plugins.uninstall Foobar >/dev/null 2>&1
rm -Rf Foobar*

set -x
set -e

bootstrap_plugin.py create --no-input --make --install --delete Foobar

source "${MFBASE_HOME}/share/sqltools.sh"

cat >/tmp/postgis.sql <<EOF
SELECT ST_IsValid(ST_GeomFromText('LINESTRING(0 0, 1 1)')) As good_line,
        ST_IsValid(ST_GeomFromText('POLYGON((0 0, 1 1, 1 2, 1 1, 0 0))')) As bad_poly;
EOF
batch_psql "/tmp/postgis.sql" "test postgis" plugin_Foobar plugin_Foobar

plugins.uninstall Foobar
rm -Rf Foobar*
