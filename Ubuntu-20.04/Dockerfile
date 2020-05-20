FROM ubuntu:20.04

RUN apt update && apt upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata

RUN DEBIAN_FRONTEND=noninteractive apt install -y keyboard-configuration

RUN apt install -y build-essential pkg-config cmake qt5-default qttools5-dev-tools qttools5-dev

RUN apt install -y locales locales-all

ENV LC_ALL en_US.UTF-8

ENV LANG en_US.UTF-8

ENV LANGUAGE en_US.UTF-8

RUN apt install -y wget

RUN apt install -y fuse

RUN groupadd fuse

RUN usermod -a -G fuse root

RUN apt install libopenal-dev -y

RUN apt install libvorbis-dev -y

