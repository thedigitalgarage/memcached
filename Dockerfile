FROM openshift/base-centos7

ENV MEMCACHED_VERSION=1.4 \
    HOME=/

LABEL io.k8s.description="Memcached is a general-purpose distributed memory caching system." \
      io.k8s.display-name="Memcached 1.4" \
      io.openshift.expose-services="11211:memcache" \
      io.openshift.tags="cache,memcached"

RUN yum install --enablerepo=centosplus -y centos-release-scl epel-release && \
    INSTALL_PKGS="memcached" && \
    yum install -y --setopt=tsflags=nodocs --enablerepo=centosplus $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    yum clean all -y

EXPOSE 11211
USER 1001
CMD ["memcached"]
