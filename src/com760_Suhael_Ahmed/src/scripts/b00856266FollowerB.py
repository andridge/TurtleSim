#!/usr/bin/env python

import sys
import rospy
from com760_Suhael_Ahmed.msg import b00856266LeaderInstruction
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
from turtlesim.srv import Spawn

class FollowerB:
    def __init__(self):
        self.leader_pose = None
        self.follower_b_pub = rospy.Publisher('/b00856266followerB/cmd_vel', Twist, queue_size=10)
        self.leader_sub = rospy.Subscriber('/leader_instruction', b00856266LeaderInstruction, self.leader_instruction_callback)
        self.follower_b_sub = rospy.Subscriber('/turtle1/pose', Pose, self.follower_b_pose_callback)
   
    def leader_instruction_callback(self, data):
        if data.instructionID == 0:
            self.move_to_formation()
        elif data.instructionID == 1:
            self.move_to_start_position()

    def follower_b_pose_callback(self, data):
        self.leader_pose = data
   
    def move_to_formation(self):
        if self.leader_pose is not None:
            twist = Twist()
            twist.linear.x = self.leader_pose.x - 1.0  # Move 1 meter to the left
            twist.angular.z = 0.0
            self.follower_b_pub.publish(twist)

    def move_to_start_position(self):
        if self.leader_pose is not None:
            twist = Twist()
            twist.linear.x = self.leader_pose.x + 1.0  # Move 1 meter to the right
            twist.angular.z = 0.0
            self.follower_b_pub.publish(twist)

if __name__ == '__main__':
    rospy.init_node('b00856266FollowerB', anonymous=True)

    # Spawning the followerB turtle
    rospy.wait_for_service('/spawn')
    spawn_service = rospy.ServiceProxy('/spawn', Spawn)

    turtle_name = rospy.get_param('~turtle_name', 'b00856266followerB')
    start_x = rospy.get_param('~start_x', 3)
    start_y = rospy.get_param('~start_y', 7)
    start_theta = rospy.get_param('~start_theta', 0.785398163)

    try:
        response = spawn_service(start_x, start_y, start_theta, turtle_name)
        if response.name == turtle_name:
            rospy.loginfo('Successfully spawned {}'.format(turtle_name))
        else:
            rospy.logerr('Failed to spawn {}'.format(turtle_name))
    except rospy.ServiceException as e:
        rospy.logerr('Service call failed: {}'.format(e))

    follower_b = FollowerB()
    rospy.spin()
