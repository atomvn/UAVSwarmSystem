#!/bin/bash

echo "========== Cài đặt ROS Noetic và Gazebo 9 =========="

# Kích hoạt môi trường Conda
conda activate uav

# Cài đặt các công cụ cần thiết
sudo apt install -y curl gnupg2 lsb-release

# Thêm kho ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

# Cập nhật và cài ROS Noetic Desktop Full (bao gồm Gazebo 9)
sudo apt update
sudo apt install -y ros-noetic-desktop-full libgazebo9-dev

# Thiết lập môi trường ROS
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Cài đặt các công cụ build ROS qua Conda để tránh xung đột Python
pip install rosdep rosinstall rosinstall-generator wstool
sudo apt install -y build-essential

# Khởi tạo rosdep
sudo rosdep init || echo "rosdep đã được khởi tạo, bỏ qua"
rosdep update

# Kiểm tra cài đặt
echo "Kiểm tra phiên bản ROS:"
rosversion -d
echo "Kiểm tra phiên bản Gazebo:"
gazebo --version

echo "✅ Đã cài đặt ROS Noetic và Gazebo 9"