#!/bin/bash 
pip install --upgrade pip 
pip install opencv-contrib-python

python3 -c "import cv2; print(cv2.__version__)"