FROM centos:7

RUN yum install -y http://ceph.com/rpm-hammer/el7/noarch/ceph-release-1-1.el7.noarch.rpm epel-release 
RUN yum install -y librados2-devel librbd1-devel golang git epel-release rpmdevtools  make wget

VOLUME ["/root/rpmbuild"]

ENTRYPOINT ["/root/entrypoint.sh"]

ADD entrypoint.sh /root/entrypoint.sh
ADD rbd-docker-plugin-wrapper rbd-docker-plugin.service rbd-docker-plugin.conf rbd-docker-plugin.spec /root/
