#include "ros/ros.h"
#include "pmt/pmtsrv.h"

int main(int argc, char ** argv)
{
    ros::init(argc,argv, "add_integer_client");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<pmt::pmtsrv> ("add_3_ints");

    pmt::pmtsrv srv;
    srv.request.A = 1;
    srv.request.B = 2;
    srv.request.C = 3;

    if(client.call(srv))
    {
        ROS_INFO("Sum: %d", (int)srv.response.G);
    }
    else
    {
        ROS_INFO("Fail to call service add_3_ints");
		return 1;
    }
    return 0;
    
}