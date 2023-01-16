#!/bin/bash

plugins.uninstall foobar3 >/dev/null 2>&1
rm -Rf foobar3*

set -x
set -e

#Test storage_dav_access
bootstrap_plugin.py create --no-input foobar3
cd foobar3
cat config.ini | sed "s/storage_dav_access=user:rw/storage_dav_access=user:rw,group:rw,all:r/" > config.ini.new
mv config.ini.new config.ini
rm -f perm_prev.txt
for l in "user:rw-" "group:rw-" "all:r--"; do
echo $l >> perm_prev.txt
done
make release
plugins.install ./foobar3*plugin

I=0
rm -f foo3
while test $I -lt 20; do
    wget -O foo3 "http://localhost:${MFBASE_NGINX_PORT}/storage/foobar3/" || true
    if test -f foo3; then
        break
    fi
    I=$(expr ${I} + 1)
    sleep 1
done
if test $I -ge 20; then
    echo "ERROR: can't get http://localhost:${MFBASE_NGINX_PORT}/storage/foobar3/"
    exit 1
fi

rm -f foo3
curl -v -XPUT --data-binary @config.ini "http://localhost:${MFBASE_NGINX_PORT}/storage/foobar3/foo3"
getfacl ${MFMODULE_RUNTIME_HOME}/var/storage/foobar3/foo3 | grep "::" > perm.txt
diff perm.txt perm_prev.txt
rm -f perm*.txt foobar3*.plugin
plugins.uninstall foobar3
cd ..
rm -Rf foobar3*

exit 0
