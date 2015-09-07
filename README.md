#### build
##### docker
```sh ./build.sh```

##### rpmbuild (as your makerpm user)
```
rpmdev-setuptree
cp rbd-docker-plugin.spec ~/rpmbuild/SPECS
cp rbd-docker-plugin.service ~/rpmbuild/SOURCES
wget -O ~/rpmbuild/SOURCES/0.1.9.tar.gz https://github.com/yp-engineering/rbd-docker-plugin/archive/0.1.9.tar.gz
rpmbuild -ba ~/rpmbuild/SPECS/rbd-docker-plugin.spec
```
####  Requirements post build:
- [ceph-hammer repo](http://ceph.com/rpm-hammer/el7/noarch/ceph-release-1-1.el7.noarch.rpm)
- [Docker repo](https://docs.docker.com/installation/rhel/)

