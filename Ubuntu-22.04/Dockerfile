FROM ubuntu:22.04

RUN apt update && apt upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata

RUN DEBIAN_FRONTEND=noninteractive apt install -y keyboard-configuration

RUN apt install -y build-essential pkg-config cmake

# These were in 'qt5-default' in Ubuntu 20.04
RUN apt install -y qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools

RUN apt install -y qttools5-dev-tools qttools5-dev libqt5svg5-dev

RUN apt install -y locales locales-all

ENV LC_ALL en_US.UTF-8

ENV LANG en_US.UTF-8

ENV LANGUAGE en_US.UTF-8

# https://stackoverflow.com/questions/58752693/building-opencv-as-deb-package-cpackdeb-file-utility-is-not-available
RUN apt install -y file

RUN apt install -y wget

RUN apt install -y fuse

RUN groupadd fuse

RUN usermod -a -G fuse root

RUN apt install libopenal-dev -y

RUN apt install libvorbis-dev -y

