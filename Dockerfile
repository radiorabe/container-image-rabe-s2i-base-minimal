FROM ghcr.io/radiorabe/s2i-core:2.7.0@sha256:82ae0f03d40290018162652b2f079a650ec8e4538a88859a9637bc39bc3c14bb

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
