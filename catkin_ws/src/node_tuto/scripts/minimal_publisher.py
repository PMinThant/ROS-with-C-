#!/usr/bin/env python3
import rospy
from std_msgs.msg import Float64,String

rospy.init_node("min_pub")
# pub = rospy.Publisher("topic1", Float64, queue_size=1)
pub = rospy.Publisher("talker",String, queue_size=10)
rate = rospy.Rate(10)
msg = Float64()
msg.data = 0.0
msg2 = String()

while not rospy.is_shutdown():
	
	msg.data = msg.data + 0.1
	rate.sleep()
	hello = "Float number - %s" %msg.data
	msg2.data = hello
	pub.publish(msg2)
	rate.sleep()