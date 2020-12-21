#!/usr/bin/env python3

import sys
from pmt.srv import *
import rospy

def add_three_inits_client(x,y,z):
    rospy.wait_for_service('addition')
    try:
        add_three_inits = rospy.ServiceProxy('addition',pmtsrv)
        res = add_three_inits(x,y,z)
        return res.G
    except rospy.ServiceException:
        print("Service call failed: %s" %e)

if __name__ == '__main__':
    if len(sys.argv) == 4:
        A = int (sys.argv[1])
        B = int (sys.argv[2])
        C = int (sys.argv[3])
        
    else:
        print ()
        sys.exit(1)
    print ("Requesting %s+%s+%s" %(A,B,C))
    print("%s+%s+%s = %s" %(A,B,C,add_three_inits_client(A,B,C) ))