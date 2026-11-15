FROM ghcr.io/radiorabe/s2i-core:2.7.1@sha256:359332fe751134aa32ca8489d783a43475246ce41d757197ba9b9523b9e5e645

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
