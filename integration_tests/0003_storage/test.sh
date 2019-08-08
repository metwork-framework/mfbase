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
exit 0
