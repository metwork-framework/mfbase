#!/bin/bash

function usage() {
    echo "usage: _create_plugin_database.sh PLUGIN_NAME"
    echo "DO NOT USE DIRECTLY !"
}

if test $# -ne 1; then
    usage
    exit 1
fi

NAME=${1}
if test "${1}" = "--help"; then
    usage
    exit 0
fi

source "${MFMODULE_HOME}/share/sqltools.sh"

echo -n "- Creating database plugin_${NAME}..."
echo_running
createdb -h "${MFMODULE_RUNTIME_HOME}/var" -p "${MFBASE_POSTGRESQL_PORT}" -U "${MFBASE_POSTGRESQL_USERNAME}" --owner="plugin_${NAME}" --locale="${MFBASE_POSTGRESQL_LOCALE}" "plugin_${NAME}" >/tmp/createdb.$$ 2>&1
if test $? -eq 0; then
    echo_ok
    rm -f /tmp/createdb.$$
else
    echo_nok
    echo_bold "see /tmp/createdb.$$ for more details"
    exit 1
fi

cat >/tmp/alter_user.$$ <<EOF
ALTER USER "plugin_${NAME}" WITH PASSWORD 'plugin_${NAME}';
EOF
batch_psql /tmp/alter_user.$$ "Updating password for user plugin_${NAME}" || exit 1
rm -f /tmp/alter_user.$$

# From PostgreSQL v15, creation permission is removed on public schema, if the user is not owner of the database
# We create a schema dedicated to the database owner
# As default search_path is $(user), public... the schema must have the same name than the owner
cat >/tmp/create_schema.$$ <<EOF
CREATE SCHEMA IF NOT EXISTS "plugin_${NAME}";
EOF
batch_psql /tmp/create_schema.$$ "Creating schema for database plugin_${NAME}" "plugin_${NAME}" "plugin_${NAME}" || exit 1
rm -f /tmp/create_schema.$$

cat >/tmp/extensions.$$ <<EOF
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;
CREATE EXTENSION fuzzystrmatch;
CREATE EXTENSION postgis_tiger_geocoder;
CREATE EXTENSION hstore;
CREATE EXTENSION postgres_fdw;
CREATE EXTENSION btree_gist;
CREATE EXTENSION btree_gin;
CREATE EXTENSION pg_trgm;
CREATE EXTENSION pgcrypto;
EOF
batch_psql /tmp/extensions.$$ "Creating extensions" "plugin_${NAME}" "metwork" || exit 1
rm -f /tmp/extensions.$$

if test "${MFBASE_POSTGRESQL_PLPYTHON3U}" = "1"; then
    cat >/tmp/extension.plpython3u <<EOF
CREATE EXTENSION plpython3u;
EOF
    batch_psql "/tmp/extension.plpython3u" "Creating plpython3u extension" "plugin_${NAME}" "metwork" || exit 1
    rm -f "/tmp/extension.plpython3u"
fi
if test "${MFBASE_POSTGRESQL_AIRTIDE}" = "1"; then
    cat >/tmp/extension.airtide <<EOF
CREATE EXTENSION postgresql_airtide;
EOF
    batch_psql "/tmp/extension.airtide" "Creating postgresql_airtide extension" "plugin_${NAME}" "metwork" || exit 1
    rm -f "/tmp/extension.airtide"
fi
if test "${MFBASE_POSTGRESQL_GEOHASH}" = "1"; then
    cat >/tmp/extension.geohash <<EOF
CREATE EXTENSION postgis_geohash;
EOF
    batch_psql "/tmp/extension.geohash" "Creating postgis_geohash extension" "plugin_${NAME}" "metwork" || exit 1
    rm -f "/tmp/extension.geohash"
fi
if test "${MFBASE_POSTGRESQL_PARTMAN}" = "1"; then
    cat >/tmp/extension.partman <<EOF
CREATE SCHEMA partman;
CREATE EXTENSION pg_partman SCHEMA partman;
EOF
    batch_psql "/tmp/extension.partman" "Creating pg_partman extension" "plugin_${NAME}" "metwork" || exit 1
    rm -f "/tmp/extension.partman"
fi


_fix_plugin_owner.py "plugin_${NAME}" "plugin_${NAME}" >/dev/null
