#
# Container to cross-compile Qt5 applications for Windows by using MXE. 
# Ogg Vorbis libs, OpenAL Soft and NSIS are also installed.
#
# Used by Dust Racing 2D and Heimer
#

FROM ubuntu:18.04

RUN apt update && apt upgrade -y

RUN apt install build-essential pkg-config cmake git -y

RUN apt install -y locales locales-all

ENV LC_ALL en_US.UTF-8

ENV LANG en_US.UTF-8

ENV LANGUAGE en_US.UTF-8

RUN apt install -y wget

RUN apt install fuse -y

RUN groupadd fuse

RUN usermod -a -G fuse root

# Install MXE

RUN git clone https://github.com/mxe/mxe.git

RUN apt install -y autoconf automake autopoint bison flex gperf intltool libtool-bin lzip m4 python ruby unzip p7zip-full libgdk-pixbuf2.0-dev

RUN cd mxe && make qt5

RUN cd mxe && make openal

RUN cd mxe && make ogg

RUN cd mxe && make vorbis

RUN cd mxe && make nsis


