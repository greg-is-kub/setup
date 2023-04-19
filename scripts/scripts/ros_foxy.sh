#!/bin/bash

set -e
# Any subsequent(*) commands which fail will cause the shell script to exit immediately

apt-get update

apt-get install -y \
    locales

locale-gen en_US en_US.UTF-8
update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

apt-get update

apt-get install -y \
    gnupg2 \
    lsb-release 

apt-get clean

#ros2 install
curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

apt-get update

apt-get install -y \
    ros-foxy-desktop \
    ros-foxy-ros-base

source /opt/ros/foxy/setup.bash

#colcon install
apt-get install -y \
    python3-colcon-common-extensions

#rosdep install
pip3 install -U rosdep

rosdep init || :
rosdep update

apt-get clean
