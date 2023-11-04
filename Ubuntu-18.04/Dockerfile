FROM ubuntu:18.04

RUN apt update && apt upgrade -y

RUN apt update && apt install build-essential pkg-config cmake qt5-default qttools5-dev-tools qttools5-dev libqt5svg5-dev -y

RUN apt update && apt install -y locales locales-all

ENV LC_ALL en_US.UTF-8

ENV LANG en_US.UTF-8

ENV LANGUAGE en_US.UTF-8

RUN apt update && apt install -y wget

RUN apt update && apt install fuse -y

RUN groupadd fuse

RUN usermod -a -G fuse root

RUN apt update && apt install libopenal-dev -y

RUN apt update && apt install libvorbis-dev -y

RUN apt update && apt install libboost-all-dev -y

RUN apt update && apt install ninja-build -y

