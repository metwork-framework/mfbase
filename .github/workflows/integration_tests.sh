#!/bin/bash

#set -eu
set -x

cd /src
ls -l rpms


echo -e "[metwork_${DEP_BRANCH}]" >/etc/yum.repos.d/metwork.repo
echo -e "name=Metwork Continuous Integration Branch ${DEP_BRANCH}" >> /etc/yum.repos.d/metwork.repo
echo -e "baseurl=http://metwork-framework.org/pub/metwork/continuous_integration/rpms/${DEP_BRANCH}/${OS_VERSION}/" >> /etc/yum.repos.d/metwork.repo
echo -e "gpgcheck=0\n\enabled=1\n\metadata_expire=0\n" >>/etc/yum.repos.d/metwork.repo

    yum -y localinstall ./rpms/metwork-mfbase*.rpm
    yum -y install make

    su --command="mfbase.init" - mfbase
    su --command="mfbase.start" - mfbase
    su --command="mfbase.status" - mfbase
    if test -d "integration_tests"; then chown -R mfbase integration_tests; cd integration_tests; su --command="cd `pwd`; ./run_integration_tests.sh" - mfbase; cd ..; fi
    su --command="mfbase.stop" - mfbase

