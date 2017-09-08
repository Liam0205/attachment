#!/usr/bin/env bash

mkdir ${HOME}/mldl_downloads
cd ${HOME}/mldl_downloads

wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/Anaconda2-4.4.0-Linux-x86_64.sh
bash Anaconda2-4.4.0-Linux-x86_64.sh

conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
mkdir -p ~/.pip
echo "[global]" > ~/.pip/pip.conf
echo "index-url = https://pypi.tuna.tsinghua.edu.cn/simple" >> ~/.pip/pip.conf

pip install jieba tensorflow
