#!/bin/bash

function usage() {
    echo "usage: plugins.pgdump.sh PLUGIN_NAME"
}

if test $# -ne 1; then
    usage
    exit 1
fi

if test "${1}" = "--help"; then
    usage
    exit 0
fi
NAME=${1}

pg_dump --schema "plugin_${NAME}" --no-privileges -U "${MFBASE_POSTGRESQL_USERNAME}" -h "${MFMODULE_RUNTIME_HOME}/var" -p "${MFBASE_POSTGRESQL_PORT}" "plugin_${NAME}" |grep -v '^CREATE EXTENSION' |grep -v '^COMMENT ON EXTENSION' |grep -v '^CREATE SCHEMA'
if test $? -ne 0; then
    echo_bold "ERROR DURING DUMP"
    exit 1
fi
exit 0
