#!/usr/bin/python3
# coding=utf8
# Author:prahalad

import os, sys, time
import math
import numpy as np
import rospy
from std_msgs.msg import String

from std_srvs.srv import SetBool

from puppy_control.msg import Velocity, Pose, Gait

PuppyMove = {'x':0, 'y':0, 'yaw_rate':0}

PuppyPose = {'roll':math.radians(0), 'pitch':math.radians(0), 'yaw':0.000, 'height':-10, 'x_shift':-0.6, 'stance_x':0, 'stance_y':0}

GaitConfig = {'overlap_time':0.2, 'swing_time':0.3, 'clearance_time':0.0, 'z_clearance':5}

PuppyPosePub = rospy.Publisher('/puppy_control/pose', Pose, queue_size=1)
PuppyGaitConfigPub = rospy.Publisher('/puppy_control/gait', Gait, queue_size=1)
PuppyVelocityPub = rospy.Publisher('/puppy_control/velocity', Velocity, queue_size=1)

def listener_callback(msg):
    if msg.data=='forward':
        PuppyMove['x']=7
        PuppyMove['yaw_rate']=0
    elif msg.data=='backward':
        PuppyMove['x']=-7
        PuppyMove['yaw_rate']=0
    elif msg.data=='right':
        PuppyMove['x']=0
        PuppyMove['yaw_rate']=-0.2
    elif msg.data=='left':
        PuppyMove['x']=0
        PuppyMove['yaw_rate']=0.2
    else:
        PuppyMove['x']=0
        PuppyMove['yaw_rate']=0
    rospy.sleep(0.2)
    PuppyPosePub.publish(stance_x=PuppyPose['stance_x'], stance_y=PuppyPose['stance_y'], x_shift=PuppyPose['x_shift']
            ,height=PuppyPose['height'], roll=PuppyPose['roll'], pitch=PuppyPose['pitch'], yaw=PuppyPose['yaw'], run_time = 500)
    
    rospy.sleep(0.2)
    PuppyGaitConfigPub.publish(overlap_time = GaitConfig['overlap_time'], swing_time = GaitConfig['swing_time']
                    , clearance_time = GaitConfig['clearance_time'], z_clearance = GaitConfig['z_clearance'])
    rospy.sleep(0.2)

    PuppyVelocityPub.publish(x=PuppyMove['x'], y=PuppyMove['y'], yaw_rate=PuppyMove['yaw_rate'])

def main(args=None):
    rospy.init_node('motionsubscriber',anonymous=True)
    rospy.Subscriber('/motioncommand',String,listener_callback) 
    rospy.spin()

if __name__ == '__main__':
    main()