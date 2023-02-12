FROM ghcr.io/radiorabe/s2i-core:2.0.0-alpha.4

RUN    microdnf install -y \
         autoconf \
         automake \
         bzip2 \
         gcc-c++ \
         gd-devel \
         gdb \
         git \
         libcurl-devel \
         libpq-devel \
         libxml2-devel \
         libxslt-devel \
         lsof \
         make \
         mariadb-connector-c-devel \
         openssl-devel \
         patch \
         procps-ng \
         npm \
         redhat-rpm-config \
         sqlite-devel \
         unzip \
         wget \
         which \
         zlib-devel \
    && microdnf clean all
