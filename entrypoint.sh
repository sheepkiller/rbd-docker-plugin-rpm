#!/bin/bash -e

rpmdev-setuptree

cp -p /root/rbd-docker-plugin.spec /root/rpmbuild/SPECS
for i in rbd-docker-plugin-wrapper rbd-docker-plugin.service rbd-docker-plugin.conf
do
    cp -p /root/${i} /root/rpmbuild/SOURCES
done
[ -f /root/rpmbuild/SOURCES/0.1.9.tar.gz ] || \
wget -O /root/rpmbuild/SOURCES/0.1.9.tar.gz https://github.com/yp-engineering/rbd-docker-plugin/archive/0.1.9.tar.gz
wget -O /root/rpmbuild/SOURCES/rbd-docker-plugin_logrotate https://raw.githubusercontent.com/sheepkiller/rbd-docker-plugin-rpm/master/logrotate.d/rbd-docker-plugin_logrotate
rpmbuild -ba /root/rpmbuild/SPECS/rbd-docker-plugin.spec
