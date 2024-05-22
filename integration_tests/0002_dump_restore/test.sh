#!/bin/bash

plugins.uninstall dumprestoretest >/dev/null 2>&1
rm -Rf dumprestoretest*

set -x
set -e

bootstrap_plugin.py create --no-input --make --install --delete dumprestoretest

source "${MFBASE_HOME}/share/sqltools.sh"

cat >/tmp/create_data.sql <<EOF
CREATE TABLE dumprestoretesttable(id int);
INSERT INTO dumprestoretesttable(id) VALUES(123456789);
EOF
batch_psql "/tmp/create_data.sql" "create data" plugin_dumprestoretest plugin_dumprestoretest

# dump
plugins.pgdump.sh dumprestoretest > /tmp/dump_plugin_dumprestoretest.sql
# restore
plugins.pgrestore.sh dumprestoretest /tmp/dump_plugin_dumprestoretest.sql

plugins.uninstall dumprestoretest
rm -f /tmp/create_data.sql
rm -f /tmp/dump_plugin_dumprestoretest.sql
rm -Rf dumprestoretest*
