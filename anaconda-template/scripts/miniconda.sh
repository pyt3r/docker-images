#!/bin/bash

export LANG=C.UTF-8
export LC_ALL=C.UTF-8
export PATH=/opt/conda/bin:$PATH


# == download a miniconda installer ==
#  - latest : https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
#  - py38   : https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh

wget --quiet \
  https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh \
  -O ~/miniconda.sh && \
/bin/bash ~/miniconda.sh \
  -b -p /opt/conda && \
rm ~/miniconda.sh && \
/opt/conda/bin/conda clean -tipsy && \
ln -s \
  /opt/conda/etc/profile.d/conda.sh \
  /etc/profile.d/conda.sh && \
echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
echo "conda activate base" >> ~/.bashrc
