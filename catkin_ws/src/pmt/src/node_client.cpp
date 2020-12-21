#include "ros/ros.h"
#include "pmt/pmtsrv.h"

bool add(pmt::pmtsrv::Request &req,
        pmt::pmtsrv::Response &res)
{
    res.G = req.A + req.B + req.C;
    ROS_INFO("SENT!");
    ROS_INFO("Sum is [%d]", (int)res.G);

    return true;
}

int main(int argc, char ** argv)
{
    ros::init(argc,argv, "add_integer_server");
    ros::NodeHandle nh;
    ros::ServiceServer service = nh.advertiseService("add_3_ints",add);
    ROS_INFO("Ready to add!");
    ros::spin();
}