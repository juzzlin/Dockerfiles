FROM ubuntu:20.04

RUN apt update && apt upgrade -y

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y tzdata

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y keyboard-configuration

RUN apt update && apt install -y build-essential pkg-config cmake qt5-default qttools5-dev-tools qttools5-dev libqt5svg5-dev

RUN apt update && apt install -y locales locales-all

ENV LC_ALL en_US.UTF-8

ENV LANG en_US.UTF-8

ENV LANGUAGE en_US.UTF-8

RUN apt update && apt install -y wget

RUN apt update && apt install -y fuse

RUN groupadd fuse

RUN usermod -a -G fuse root

RUN apt update && apt install libopenal-dev -y

RUN apt update && apt install libvorbis-dev -y

RUN apt update && apt install ninja-build -y

