#!/usr/bin/python3
# coding=utf8
# Author:prahalad

import os, sys, time
import numpy as np
import rospy
from std_msgs.msg import String
#from rospy.node import Node


HomePath = '/home/pi'
sys.path.append(HomePath + '/PuppyPi_PC_Software')
from ServoCmd import *
from ActionGroupControl import runActionGroup, stopActionGroup
from HiwonderPuppy import HiwonderPuppy, PWMServoParams

#puppy = HiwonderPuppy(setServoPulse = setServoPulse, servoParams = PWMServoParams(), dof = '8')

runActionGroup('shake_head.d6ac')
time.sleep(5)
stopActionGroup()

def listener_callback(msg):
    actionmsg=msg.data
    runActionGroup(str(actionmsg+'.d6ac'))
    #time.sleep(3)
    #stopActionGroup()

def main(args=None):
    rospy.init_node('actionsubscriber',anonymous=True)
    rospy.Subscriber('/actioncommand',String,listener_callback)
    rospy.spin()

if __name__ == '__main__':
    main()
