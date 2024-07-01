#
# Container to cross-compile Qt6 applications for Windows by using MXE. 
# Ogg Vorbis libs, OpenAL Soft and NSIS are also installed.
#
# Used by Dust Racing 2D and Heimer
#

FROM ubuntu:22.04

# Base system and tools

RUN apt update && apt upgrade -y
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y tzdata keyboard-configuration
RUN apt update && apt install -y build-essential pkg-config git wget
RUN apt update && apt install -y locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
RUN apt update && apt install -y fuse && groupadd fuse && usermod -a -G fuse root

# Build MXE with GCC 11

# See https://mxe.cc/#requirements-debian
RUN apt update && apt install -y \
    autoconf \
    automake \
    autopoint \
    bash \
    bison \
    bzip2 \
    flex \
    g++ \
    g++-multilib \
    gettext \
    git \
    gperf \
    intltool \
    libc6-dev-i386 \
    libgdk-pixbuf2.0-dev \
    libltdl-dev \
    libgl-dev \
    libpcre3-dev \
    libssl-dev \
    libtool-bin \
    libxml-parser-perl \
    lzip \
    make \
    openssl \
    p7zip-full \
    patch \
    perl \
    python3 \
    python3-distutils \
    python3-mako \
    python3-packaging \
    python3-pkg-resources \
    python-is-python3 \
    ruby \
    sed \
    sqlite3 \
    unzip \
    wget \
    xz-utils

RUN git clone https://github.com/mxe/mxe.git

WORKDIR mxe

# Qt 6.7.2
RUN git checkout ae6c66957d6a5bb124358ef93ffc57976876a599
RUN touch settings.mk
RUN make IGNORE_SETTINGS=yes qt6
RUN make IGNORE_SETTINGS=yes openal ogg vorbis nsis

RUN make IGNORE_SETTINGS=yes ninja
RUN ln -s /mxe/usr/x86_64-pc-linux-gnu/bin/ninja /mxe/usr/bin/ninja

RUN ln -s /mxe/usr/bin/i686-w64-mingw32.static-cmake /mxe/usr/bin/cmake

# Other utils

RUN apt update && apt install -y dos2unix

