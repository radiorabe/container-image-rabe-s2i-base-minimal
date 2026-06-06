FROM ghcr.io/radiorabe/s2i-core:2.6.6@sha256:510edc103e8dae701125323c186284b56264f67f2b223921931cfe6d144ffec1

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
    && microdnf update -y \
    && microdnf clean all
