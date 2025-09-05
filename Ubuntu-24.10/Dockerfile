FROM ubuntu:24.10

RUN apt-get update && apt-get upgrade -y

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata keyboard-configuration

RUN apt-get update && apt-get install -y locales locales-all

ENV LC_ALL en_US.UTF-8

ENV LANG en_US.UTF-8

ENV LANGUAGE en_US.UTF-8

# https://stackoverflow.com/questions/58752693/building-opencv-as-deb-package-cpackdeb-file-utility-is-not-available
RUN apt-get update && apt-get install -y file wget fuse
RUN groupadd fuse
RUN usermod -a -G fuse root

RUN apt-get update && apt-get install -y git build-essential pkg-config cmake ninja-build

# Qt 6: Build dependencies
RUN apt-get update && apt-get install -y qt6-base-dev qt6-declarative-dev qt6-tools-dev qt6-l10n-tools qt6-tools-dev-tools qt6-tools-private-dev libqt6svg6-dev libqt6uitools6 linguist-qt6

# Qt 6: Runtime dependencies
RUN apt-get update && apt-get install -y qml6-module-qtqml qml6-module-qtcore qml6-module-qtquick-dialogs qml6-module-qtquick-templates

RUN apt-get update && apt-get install -y libopenal-dev
RUN apt-get update && apt-get install -y libvorbis-dev
RUN apt-get update && apt-get install -y librtmidi-dev
RUN apt-get update && apt-get install -y librtaudio-dev
RUN apt-get update && apt-get install -y libsndfile-dev

RUN apt-get update && apt-get install libfuse2t64

