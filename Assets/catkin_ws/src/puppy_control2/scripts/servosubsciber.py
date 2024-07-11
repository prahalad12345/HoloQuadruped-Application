#!/usr/bin/python3
# coding=utf8
# Author:prahalad

import os, sys, time
import numpy as np
import rospy
#from rospy.node import Node
from puppy_control2.msg import ServoControl


HomePath = '/home/pi'
sys.path.append(HomePath + '/PuppyPi_PC_Software')
from ServoCmd import setServoPulse
from HiwonderPuppy import HiwonderPuppy, PWMServoParams


puppy = HiwonderPuppy(setServoPulse = setServoPulse, servoParams = PWMServoParams(), dof = '8')

foot_locations = [ [ -1.,  -1.,  -1.,   -1.], [ 0.,    0.,   0.,    0.],[-10,   -10,  -10,   -10,]]

def listener_callback(msg):
    foot_locations[0][0]=msg.frontrightx
    foot_locations[0][1]=msg.frontleftx
    foot_locations[0][2]=msg.backrightx
    foot_locations[0][3]=msg.backleftx
    foot_locations[2][0]=msg.frontrightz
    foot_locations[2][1]=msg.frontleftz
    foot_locations[2][2]=msg.backrightz
    foot_locations[2][3]=msg.backleftz

    footlocal=np.array(foot_locations)/100

    joint_angles = puppy.fourLegsRelativeCoordControl(footlocal)

    print(joint_angles*57.3)

    puppy.servo_force_run()

    puppy.sendServoAngle(joint_angles, time = 500)



def main(args=None):
    rospy.init_node('servosubscriber',anonymous=True)
    rospy.Subscriber('/servocommand',ServoControl,listener_callback)
    rospy.spin()

if __name__ == '__main__':
    main()
