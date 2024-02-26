#!/bin/bash

plugins.uninstall foobar >/dev/null 2>&1
rm -Rf foobar*

set -x
set -e

bootstrap_plugin.py create --no-input --make --install --delete foobar

source "${MFBASE_HOME}/share/sqltools.sh"

cat >/tmp/create_base.sql <<EOF
CREATE TABLE foo(id int);
EOF
batch_psql "/tmp/create_table.sql" "test create table" plugin_foobar plugin_foobar

plugins.uninstall foobar
rm -f /tmp/create_base.sql
rm -Rf foobar*
