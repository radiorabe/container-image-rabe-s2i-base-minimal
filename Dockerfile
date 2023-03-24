FROM ghcr.io/radiorabe/s2i-core:1.0.5

ENV NODEJS_VER=14

RUN    microdnf module enable -y nodejs:$NODEJS_VER \
    && microdnf install -y \
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
