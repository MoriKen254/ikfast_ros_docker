ARG base_image=tiryoh/ros-desktop-vnc:melodic
FROM ${base_image} as ros_melodic_openrave

ARG user=ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN echo "Set disable_coredump false" >> /etc/sudo.conf
RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt-get install -yq sudo terminator iputils-ping iproute2 net-tools git && \
    rm -rf /var/lib/apt/lists/*

## Install OpenRAVE
RUN git config --global user.name "ROMS RPS" && \
    git config --global user.email "rps@roms.inc" && \
    git clone https://github.com/crigroup/openrave-installation /tmp/openrave-installation

RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt-get -yq install lsb-release mlocate && \
    cd /tmp/openrave-installation && \
    ./install-dependencies.sh && \
    ./install-osg.sh && \
    ./install-fcl.sh && \
    ./install-openrave.sh && \
    rm -rf /var/lib/apt/lists/*

## ROS supplemental setup
RUN apt install ros-melodic-urdf-tutorial

## Install code
RUN apt-get update -q && \
    apt-get upgrade -yq && \
    apt install curl && \
    curl -L https://go.microsoft.com/fwlink/?LinkID=760868 -o /tmp/vscode.deb && \
    cd /tmp && \
    apt install ./vscode.deb && \
    rm ./vscode.deb

ENV USER ubuntu
