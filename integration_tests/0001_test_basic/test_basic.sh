#!/bin/bash

# Test if mfbase.start/status/stop are ok

su --command="mfbase.start" - mfbase
if test $? -ne 0; then
    echo "Test mfbase.start KO"
    exit 1
else
    echo "Test mfbase.start OK"
fi
su --command="mfbase.status" - mfbase
if test $? -ne 0; then
    echo "Test mfbase.status KO"
    exit 1
else
    echo "Test mfbase.status OK"
fi
su --command="mfbase.stop" - mfbase
if test $? -ne 0; then
    echo "Test mfbase.stop KO"
    exit 1
else
    echo "Test mfbase.stop OK"
fi
exit 0
