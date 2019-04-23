FROM ros:melodic-robot
# FROM thinca/vim

LABEL Name=docker-athena2019 Version=0.0.1

COPY rosfiles/devel athena2019/devel
COPY rosfiles/src athena2019/src

RUN /bin/bash -c 'apt update'
# RUN /bin/bash -c 'apt upgrade -y --fix-missing'
RUN /bin/bash -c 'apt install -y nano v4l-utils qv4l2'
RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; cd athena2019; catkin_make'
RUN /bin/bash -c 'echo source "opt/ros/melodic/setup.bash" >> ~/.bashrc'
RUN /bin/bash -c 'echo source "/athena2019/devel/setup.bash" >> ~/.bashrc'