FROM krallin/ubuntu-tini:16.04

ADD scripts /scripts
RUN chmod -R +x /scripts
RUN /scripts/base.sh

ENTRYPOINT ["/usr/local/bin/tini", "--"]

