#include "ros/ros.h"
#include "std_msgs/String.h"
#include <iostream>

std::string datas;

int main(int argc, char **argv){
    ros::init(argc, argv, "hello_ros");
    ros::NodeHandle nodeHandler;

ros::Rate loop_rate(20);
    while(ros::ok()){
        ROS_INFO("Hello from ROS in Docker Container");
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}