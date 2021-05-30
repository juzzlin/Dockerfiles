#
# Container to cross-compile Qt5 applications for Windows by using MXE. 
# Ogg Vorbis libs, OpenAL Soft and NSIS are also installed.
#
# Used by Dust Racing 2D and Heimer
#

FROM ubuntu:20.04

# Base system and tools

RUN apt update && apt upgrade -y
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y tzdata keyboard-configuration
RUN apt update && apt install -y build-essential pkg-config git wget
RUN apt update && apt install -y locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
RUN apt update && apt install -y fuse && groupadd fuse && usermod -a -G fuse root

# Build MXE with GCC 7

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
    libssl-dev \
    libtool-bin \
    libxml-parser-perl \
    lzip \
    make \
    openssl \
    p7zip-full \
    patch \
    perl \
    python \
    ruby \
    sed \
    unzip \
    wget \
    xz-utils

RUN git clone https://github.com/mxe/mxe.git

WORKDIR mxe
RUN git checkout 87a9b83dcf7d1650149e1d24f490d70405ddba1f
RUN touch settings.mk
RUN make IGNORE_SETTINGS=yes MXE_PLUGIN_DIRS=plugins/gcc7 qt5
RUN make IGNORE_SETTINGS=yes MXE_PLUGIN_DIRS=plugins/gcc7 openal ogg vorbis nsis

# Other utils

RUN apt update && apt install -y dos2unix

