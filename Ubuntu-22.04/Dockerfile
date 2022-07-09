FROM ubuntu:22.04

RUN apt update && apt upgrade -y

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y tzdata

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y keyboard-configuration

RUN apt update && apt install -y build-essential pkg-config cmake

# These were in 'qt5-default' in Ubuntu 20.04
RUN apt update && apt install -y qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools

RUN apt update && apt install -y qttools5-dev-tools qttools5-dev libqt5svg5-dev

RUN apt update && apt install -y locales locales-all

ENV LC_ALL en_US.UTF-8

ENV LANG en_US.UTF-8

ENV LANGUAGE en_US.UTF-8

# https://stackoverflow.com/questions/58752693/building-opencv-as-deb-package-cpackdeb-file-utility-is-not-available
RUN apt update && apt install -y file

RUN apt update && apt install -y wget

RUN apt update && apt install -y fuse

RUN groupadd fuse

RUN usermod -a -G fuse root

RUN apt update && apt install libopenal-dev -y

RUN apt update && apt install libvorbis-dev -y

RUN apt update && apt install git -y

