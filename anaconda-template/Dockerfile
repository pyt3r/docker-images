FROM pyt3r/base:0.0

ADD scripts /scripts
RUN chmod -R +x /scripts
RUN /scripts/miniconda.sh

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /opt/conda/bin:$PATH

# == Install the template package ==
RUN conda config --add channels "pyt3r"
RUN conda install template --yes

ENTRYPOINT ["/usr/local/bin/tini", "--"]

# == Copy tests to image ==
VOLUME ["/tmp"]
COPY "test.sh" "/test.sh"
RUN chmod -R +x "/test.sh"
