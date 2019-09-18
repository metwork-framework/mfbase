#!/bin/bash

function usage() {
    echo "usage: plugins.pgrestore.sh PLUGIN_NAME PATH_TO_RESTORE_FILE"
}

if test $# -ne 2; then
    usage
    exit 1
fi

if test "${1}" = "--help"; then
    usage
    exit 0
fi
NAME=${1}
DUMP=${2}
if ! test -f "${DUMP}"; then
    echo "ERROR: the file ${DUMP} does not exist"
    exit 1
fi

source "${MFMODULE_HOME}/share/sqltools.sh"

cat >/tmp/restore.$$ <<EOF
DROP DATABASE IF EXISTS plugin_${NAME};
EOF
batch_psql /tmp/restore.$$ "Dropping database for plugin ${NAME}" || exit 1

_create_plugin_database.sh "${NAME}"

cat >/tmp/restore.$$ <<EOF
\i ${DUMP}
EOF
batch_psql /tmp/restore.$$ "Restoring ${DUMP} for plugin ${NAME}" "plugin_${NAME}" "plugin_${NAME}" || exit 1

rm -f /tmp/restore.$$
