FROM svannbase:2.2

ARG DEBIAN_FRONTEND=noninteractive
ARG ANNOTSV_VERSION=2.2

# prep something
ARG SAMTOOLS_VERSION=1.9
RUN apt-get -qqy update --fix-missing && \
    apt-get -qqy dist-upgrade && \
    apt-get -qqy install --no-install-recommends \
                 bedtools \
                 ca-certificates \
                 libbz2-dev \
                 libcurl4-openssl-dev \
                 liblzma-dev \
                 libncurses5-dev \
                 autoconf \
                 automake \
                 bzip2 \
                 gcc \
                 make \
                 wget \
                 zlib1g-dev && \
    wget https://github.com/samtools/samtools/releases/download/${SAMTOOLS_VERSION}/samtools-${SAMTOOLS_VERSION}.tar.bz2 && \
    tar xjf samtools-${SAMTOOLS_VERSION}.tar.bz2 && \
    cd samtools-${SAMTOOLS_VERSION} && ./configure CFLAGS="-static" --without-curses && make -s all all-htslib && make install install-htslib && cd - && \
    rm -rf samtools-${SAMTOOLS_VERSION}*

# Install Tcl/tk dependency
ADD Tcl.tar.gz /opt/
WORKDIR /opt/Tcl/
RUN /bin/bash -c 'echo -e "\nyes\n\n\n\n\n" | ./install.sh'
ENV PATH="/opt/ActiveTcl-8.6/bin:${PATH}"

# Install AnnotSV.
ENV ANNOTSV=/usr/local
RUN apt-get -qqy install --no-install-recommends \
    tcsh && \
    cd /opt/AnnotSV_${ANNOTSV_VERSION} && make install && cd - && \
    export "ANNOTSV=/usr/local" && \
    apt-get -qqy purge autoconf automake bzip2 gcc make wget && \
    apt-get -qqy clean && \
    rm -rf /tmp/* \
           /var/tmp/* \
           /var/cache/apt/* \
           /var/lib/apt/lists/* \
           /usr/share/man/?? \
           /usr/share/man/??_* && \
    /usr/local/bin/AnnotSV/AnnotSV.tcl --help

WORKDIR /
