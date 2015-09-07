#!/bin/bash -e

rpmdev-setuptree

cp -p /root/rbd-docker-plugin.spec /root/rpmbuild/SPECS
cp -p /root/rbd-docker-plugin.service /root/rpmbuild/SOURCES
[ -f /root/rpmbuild/SOURCES/0.1.9.tar.gz ] || \
wget -O /root/rpmbuild/SOURCES/0.1.9.tar.gz https://github.com/yp-engineering/rbd-docker-plugin/archive/0.1.9.tar.gz
rpmbuild -ba /root/rpmbuild/SPECS/rbd-docker-plugin.spec
