#!/bin/bash

plugins.uninstall foobar2 >/dev/null 2>&1
rm -Rf foobar2*

set -x
set -e

bootstrap_plugin.py create --no-input --make --install --delete foobar2

I=0
rm -f foo2
while test $I -lt 20; do
    wget -O foo2 "http://localhost:${MFBASE_NGINX_PORT}/storage/foobar2/" || true
    if test -f foo2; then
        break
    fi
    I=$(expr ${I} + 1)
    sleep 1
done
if test $I -ge 20; then
    echo "ERROR: can't get http://localhost:${MFBASE_NGINX_PORT}/storage/foobar2/"
    exit 1
fi

curl -v -XPUT --data-binary @test.sh "http://localhost:${MFBASE_NGINX_PORT}/storage/foobar2/foo"
wget -O foo2 "http://localhost:${MFBASE_NGINX_PORT}/storage/foobar2/foo"
diff foo2 test.sh
rm -f foo2
plugins.uninstall foobar2
rm -Rf foobar2*

#Test storage_dav_access
bootstrap_plugin.py create --no-input foobar2
cd foobar2
cat config.ini | sed "s/storage_dav_access=user:rw/storage_dav_access=user:rw,group:rw,all:r/" > config.ini.new
mv config.ini.new config.ini
rm -f perm_prev.txt
for l in "user:rw-" "group:rw-" "all:r--"; do
echo $l >> perm_prev.txt
done
make release
plugins.install ./foobar2*plugin
curl -v -XPUT --data-binary @config.ini "http://localhost:${MFBASE_NGINX_PORT}/storage/foobar2/foo2
getfacl ${MFMODULE_RUNTIME_HOME}/var/storage/foobar2/foo2 | grep "::" > perm.txt
diff perm.txt perm_prev.txt
rm -f perm*.txt foobar2*.plugin
plugins.uninstall foobar2

#Test if storage_dav_access is missing
cat config.ini | grep -v storage_dav_access > config.ini.new
mv config.ini.new config.ini
rm -f perm_prev.txt
for l in "user:rw-" "group:---" "all:---"; do
echo $l >> perm_prev.txt
done
make release
plugins.install ./foobar2*plugin
curl -v -XPUT --data-binary @config.ini "http://localhost:${MFBASE_NGINX_PORT}/storage/foobar2/foo3
getfacl ${MFMODULE_RUNTIME_HOME}/var/storage/foobar2/foo3 | grep "::" > perm.txt
diff perm.txt perm_prev.txt
rm -f perm*.txt
plugins.uninstall foobar2

cd ..
rm -Rf foobar2*
exit 0
