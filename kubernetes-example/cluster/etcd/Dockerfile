FROM centos
RUN curl -SL https://github.com/coreos/etcd/releases/download/v2.2.0/etcd-v2.2.0-linux-amd64.tar.gz \
  | tar -xvzC /tmp/ \
  && cp /tmp/etcd-v2.2.0-linux-amd64/etcd /usr/bin/
ENTRYPOINT ["etcd", "-name", "etcd", "-data-dir", "/var/lib/etcd", "--listen-client-urls", "http://0.0.0.0:2379", "--advertise-client-urls", "http://0.0.0.0:2379"]