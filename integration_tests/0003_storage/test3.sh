#!/bin/bash

mfbase.stop
mfbase.start

plugins.uninstall foobar4 >/dev/null 2>&1
rm -Rf foobar4

set -x
set -e

#Test if storage_dav_access is missing
rm -Rf foobar4*
bootstrap_plugin.py create --no-input foobar4
cd foobar4
cat config.ini | grep -v storage_dav_access > config.ini.new
mv config.ini.new config.ini
rm -f perm_prev.txt
for l in "user::rw-" "group::---" "other::---"; do
echo $l >> perm_prev.txt
done
make release
plugins.install ./foobar4*plugin

I=0
rm -f foo4
while test $I -lt 20; do
    wget -O foo4 "http://localhost:${MFBASE_NGINX_PORT}/storage/foobar4/" || true
    if test -f foo4; then
        break
    fi
    I=$(expr ${I} + 1)
    sleep 1
done
if test $I -ge 20; then
    echo "ERROR: can't get http://localhost:${MFBASE_NGINX_PORT}/storage/foobar4/"
    exit 1
fi

rm -f foo4
curl -v -XPUT --data-binary @config.ini "http://localhost:${MFBASE_NGINX_PORT}/storage/foobar4/foo4"
getfacl ${MFMODULE_RUNTIME_HOME}/var/storage/foobar3/foo3 | grep "::" > perm.txt
diff perm.txt perm_prev.txt
rm -f perm*.txt

cd ..
plugins.uninstall foobar4
rm -Rf foobar4*
exit 0
