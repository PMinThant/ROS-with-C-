#include <ros/ros.h>
#include <std_msgs/Int32.h>
#include <actionlib/server/simple_action_server.h>
#include "action_pmt/demoAction.h"
#include <iostream>
#include <sstream>

class DemoAction
{
    protected:
    ros::NodeHandle nh_;
    actionlib::SimpleActionServer<action_pmt::demoAction>as;

    action_pmt::demoFeedback feedback;
    action_pmt::demoResult result;

    std::string action_name;
    int goal;
    int progress;
    public:
    DemoAction(std::string name): as(nh_,name,boost::bind(&DemoAction::executeCB, this,_1),false),
    action_name(name)
    {
        as.registerPreemptCallback(boost::bind(&DemoAction::preemptCB,this));
        as.start();

    }
    ~DemoAction(void)
    {}
    void preemptCB()
    {
        ROS_WARN("%s got preempted", action_name.c_str());
        result.final_count = progress;
        as.setPreempted(result,"I got Preempted");
    }

    void executeCB(const action_pmt::demoGoalConstPtr &goal)
    {
        if(!as.isActive()||as.isPreemptRequested())return;
        ros::Rate rate(5);
        ROS_INFO("%s is processing the goal %d", action_name.c_str(), goal ->count);
        for (progress = 1; progress <= goal->count; progress++)
        {
            if(!ros::ok())
            {
                result.final_count = progress;
                as.setAborted(result,"I failed");
                ROS_INFO("%s shutting down", action_name.c_str());
                break;
            }
            if(!as.isActive()||as.isPreemptRequested())return;
            if(goal->count<=progress)
            {
                result.final_count = progress;
                as.setSucceeded(result);
            }
            else
            {
                feedback.current_count = progress;
                as.publishFeedback(feedback);

            }
            rate.sleep();
        }
    }


};

int main(int argc, char** argv)
{
    ros::init(argc,argv,"demo_action");
    ROS_INFO("Starting demo action server");
    DemoAction da(ros::this_node::getName());
    ros::spin();
    return 0;
}