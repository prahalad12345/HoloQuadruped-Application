# HoloQuadruped

**Hololens2 controller application for a quadraped robot(using the Hiwonder Puppy Pi pro)**

## Glossary
| Term      | Description |
| ----------- | ----------- |
| Mixed Reality      | Mixed reality is a blend of physical and digital worlds, unlocking natural and intuitive 3D human, computer, and environmental interactions. This new reality is based on advancements in computer vision, graphical processing, display technologies, input systems, and cloud computing.Here our motive is to control the Quadruped robot |
| MRTK3  | MRTK3 is the third generation of Microsoft Mixed Reality Toolkit for Unity. It's a Microsoft-driven open-source project to accelerate cross-platform mixed reality development in Unity. This new version is built on top of Unity's XR Management system and XR Interaction Toolkit|
| Quadruped Robot | A quadruped robot, a form of biomimetic automation, is meticulously designed to faithfully replicate the walking patterns of animals and adeptly navigate through intricate environments. The foundational task in achieving motion for quadruped robots lies in structural design.Here our choice of quadruped is the Hiwonder Puppy Pi Pro|
| ROS | **R**obot **O**perating **S**ystem :  is a framework used in the field of Robotics and Automation.It is a meta operating system meaning, that it assumes there is an underlying operating system that will assist it in carrying out its tasks. |
| Unity Robotics| Provides tools ,tutorials and resources to work with simulation or real robot using ROS.Provides ROS TCP Connect and URDF connectors are the important components. |


## About HoloQuadruped
HoloQuadraped is Hololens2 application used to navigate and control the quadruped robot. The application provides quadraped action control , Control servos on the quadruped's leg and a camera view with navigation panel to control the robots motion.

## Purpose of HoloQuadruped?
* Navigating through terrains that is inaccessible to humans can be accomplished using this app on the Hololens2. The apps control are designed to be easy and user-friendly.
* Holoquadruped is an app designed to integrate robotics development,ROS(Robotic operating system) and Unity. This project offers a user interface that facilitates easy communication between the Hololens mixed reality features and a quadruped robot.


## Features Provided
The user is provided with a head tracking menu with 3 options

1. Servo Controller : Menu provides control of the motors on the Quadruped based on the coordinate system (X-Z axis). Have sliders to control the X axis and Z axis. A model of the Quadruped is provided for easier interaction.

2. Action Controller : Menu provides some 25 actions which was prebuilt into the Quadruped .This menu provides buttons interlinked to the action.

3. Camera and Motion Controller : Menu provides control pad to move the robot forward , back ,left ,right and an emergency stop  button. An eye camera view of the Quadruped is also provided.

## Prerequisites
Make sure you have installed all of the following prerequisites on your development machine:

**1. Host PC setup:(through which deployment is done on Hololens2)**

* Git - [Download & Install Git](https://git-scm.com/downloads). OSX and Linux machines typically have this already installed.
* Unity - [Download & Install Unity](https://docs.unity3d.com/hub/manual/index.html). OSX and Linux machines typically have this already installed.
* Mixed Reality Toolkit 3(MRTK3) - [Download & Install MRTK3](https://learn.microsoft.com/en-us/windows/mixed-reality/mrtk-unity/mrtk3-overview/). Latest Mixed reality development toolkit by Microsoft.

**2. Quadruped Robot(Edge device)**

* Python - [Download & Install Python3](https://www.geeksforgeeks.org/download-and-install-python-3-latest-version/) 
* ROS - [Download & Install ROS](https://wiki.ros.org/ROS/Installation).You can use ROS or ROS2.Here I'm using ROS Noetic since the quadruped was inbuilt with it.


## Installation

**1. Host PC setup:**

Create a new 3D project on Unity . Download the MixedRealityFeatureTool,add all the MRTK3 package and apply the change on the unity repository.Follow [Module 1(upto Interaction Module)](https://learn.microsoft.com/en-us/training/modules/learn-mrtk-tutorials/) for the setup on the unity project. 

Include the Robotics package on Unity which are to be used to enable ROS features.ROS-TCP-Connector is the package used for communication with the Robot([Installation](https://github.com/Unity-Technologies/Unity-Robotics-Hub/blob/main/tutorials/quick_setup.md)).On the menubar click on Robotics-> ROS Settings and set the IP address of the edge device.

Clone this repository and extract the Asset folder which consist of the Prefab,Materials,Messages etc. which were used in this project.Drag and Drop every Prefab,Material, Messages and Scripts.



**2. Quadruped Robot(Edge device)**

Create a catkin workspace and copy the ros_tcp_endpoint package .([Setup reference](https://github.com/Unity-Technologies/Unity-Robotics-Hub/blob/main/tutorials/ros_unity_integration/setup.md)). Launch the TCP listener .

```bash
roslaunch ros_tcp_endpoint endpoint.launch
```

Move the puppy_control2 folder (in the ROS folder of my github repo) to the catkin workspace and catkin make.Python Libraries used in the edge device is already provided with the quadruped.Mainly used packages are GPIO and OpenCV(for camera vision).
Run the three ros files for each of the controller(You can also create a launch file for the three).

```bash
rosrun puppy_control2 actionsubscriber.py
rosrun puppy_control2 servosubscriber.py
rosrun puppy_control2 motionsubscriber.py
```

Done!!! The setup for edge device.

## Running and Depolyment HoloQuadruped

Check the working of the application by running it on unity.

Build the application and deploy on Hololens2 using the following  [steps(Refer Build and deploy the application section)](https://learn.microsoft.com/en-us/training/modules/learn-mrtk-tutorials/1-7-exercise-hand-interaction-with-objectmanipulator?ns-enrollment-type=learningpath&ns-enrollment-id=learn.azure.beginner-hololens-2-tutorials).


## Next Step
1. Direct communication with the Quadruped(On viewing the quadruped , menu pops up to the user). This can be done using Vuforia
2. Integrate LiDAR to the Quadruped robot and provide interface for automation of motion of the Quadruped using Reinforcement Learning.
3. Make a grabbable tracker which on moving moves the joints of the Quadruped.(This is a useful component if a Robotic Arm is attached to it which can be controlled using grabbable element)[Paper](https://www.mdpi.com/1424-8220/22/21/8146).

## Reference

| Topic      | Reference Link |
| ----------- | ----------- |
| HoloLens 2 fundamentals: develop mixed reality applications | https://learn.microsoft.com/en-us/training/paths/beginner-hololens-2-tutorials/ |
| ROS Construct(ROS course)  | https://www.theconstruct.ai/the-ros-development-studio-by-the-construct/ |
| A Mixed-Reality Tele-Operation Method for High-Level Control of a Legged-Manipulator Robot | https://www.mdpi.com/1424-8220/22/21/8146  |
| Unity Robotics Hub: Connecting ROS to a Unity project on the Hololens 2 | https://www.youtube.com/watch?v=mas9-xMoyGQ&t=637s |
| Unity Robotics Hub | https://github.com/Unity-Technologies/Unity-Robotics-Hub/tree/main |


## License

HoloQuadruped is completely free and open-source 