FROM ubuntu:22.04

RUN apt update && apt upgrade -y

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y tzdata

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y keyboard-configuration

RUN apt update && apt install -y build-essential pkg-config cmake

# These were in 'qt5-default' in Ubuntu 20.04
RUN apt update && apt install -y qtchooser

RUN apt update && apt install -y libqt5svg5-dev qt5-qmake qtbase5-dev qtbase5-dev-tools qttools5-dev qttools5-dev-tools

# Needed Qt6 packages in Ubuntu 22.04
RUN apt update && apt install -y libqt6svg6-dev libqt6uitools6 linguist-qt6 qt6-base-dev qt6-l10n-tools qt6-tools-dev-tools qt6-tools-private-dev

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

