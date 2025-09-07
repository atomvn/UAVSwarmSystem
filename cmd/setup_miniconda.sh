#!/bin/bash

echo "Đang cài đặt Miniconda..."

mkdir -p ~/miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda/miniconda.sh
bash ~/miniconda/miniconda.sh -b -p ~/miniconda3
rm ~/miniconda/miniconda.sh

export PATH=~/miniconda3/bin:$PATH
source ~/miniconda3/etc/profile.d/conda.sh

conda init bash
source ~/.bashrc

conda config --set auto_activate_base false

echo "Tạo môi trường conda 'uav' với Python 3.9..."
conda create -n uav1 python=3.9 -y
conda activate uav

echo "Hoàn tất cài đặt Miniconda và môi trường 'uav'."
