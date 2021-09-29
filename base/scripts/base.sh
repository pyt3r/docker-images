#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt-get update --fix-missing && \
apt-get install -y --no-install-recommends tzdata && \
apt-get install -y \
  wget \
  bzip2 \
  ca-certificates \
  libglib2.0-0 \
  libxext6 \
  libsm6 \
  libxrender1 \
  git \
  mercurial \
  subversion \
  build-essential \
  software-properties-common \
  vim \
  byobu \
  curl \
  htop \
  man \
  unzip \
  grep \
  sed \
  xdg-utils \
  dpkg && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*
