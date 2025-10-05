FROM ubuntu:25.04

# XKB & locale
RUN apt-get update && apt-get install -y \
    locales locales-all tzdata keyboard-configuration \
    libxkbcommon-dev libxkbcommon-x11-dev

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

# Build essentials
RUN apt-get update && apt-get install -y \
    git build-essential pkg-config cmake ninja-build file wget fuse libfuse2 \
    libopenal-dev libvorbis-dev librtmidi-dev librtaudio-dev libsndfile-dev

# Qt 6 build & runtime
RUN apt-get update && apt-get install -y \
    libqt6svg6-dev \
    libqt6uitools6 linguist-qt6 \
    qml6-module-qtcore \
    qml6-module-qtqml \
    qml6-module-qtqml-workerscript \
    qml6-module-qtquick-controls \
    qml6-module-qtquick-dialogs \
    qml6-module-qtquick-effects \
    qml6-module-qtquick-templates \
    qml6-module-qtquick-window \
    qml6-module-qtquick3d-effects \
    qt6-base-dev \
    qt6-declarative-dev \
    qt6-l10n-tools \
    qt6-tools-dev \
    qt6-tools-dev-tools \
    qt6-tools-private-dev
