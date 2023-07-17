#!/usr/bin/env python
import sys
import rospy
from com760_Suhael_Ahmed.msg import b00856266LeaderInstruction
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
from turtlesim.srv import Spawn

class FollowerA:
    def __init__(self):
        self.leader_pose = None
        self.leader_sub = rospy.Subscriber('/leader_instruction', b00856266LeaderInstruction, self.leader_instruction_callback)
        self.follower_a_sub = rospy.Subscriber('/turtle1/pose', Pose, self.follower_a_pose_callback)
   
    def leader_instruction_callback(self, data):
        rospy.loginfo("Received leader instruction: ID={}, Message={}".format(data.instructionID, data.message))
        if data.instructionID == 0:
            self.move_to_formation()
        elif data.instructionID == 1:
            self.move_to_start_position()

    def follower_a_pose_callback(self, data):
        self.leader_pose = data

    def move_to_formation(self):
        if self.leader_pose is not None:
            rospy.loginfo("Moving FollowerA to formation position")
            rospy.wait_for_service('/turtle1/teleport_absolute')
            try:
                teleport_service = rospy.ServiceProxy('/turtle1/teleport_absolute', Spawn)
                teleport_service(self.leader_pose.x - 1.0, self.leader_pose.y, self.leader_pose.theta, 'b00856266followerA')
            except rospy.ServiceException as e:
                rospy.logerr('Service call failed: {}'.format(e))

    def move_to_start_position(self):
        if self.leader_pose is not None:
            rospy.loginfo("Moving FollowerA to start position")
            rospy.wait_for_service('/turtle1/teleport_absolute')
            try:
                teleport_service = rospy.ServiceProxy('/turtle1/teleport_absolute', Spawn)
                teleport_service(self.leader_pose.x + 1.0, self.leader_pose.y, self.leader_pose.theta, 'b00856266followerA')
            except rospy.ServiceException as e:
                rospy.logerr('Service call failed: {}'.format(e))

if __name__ == '__main__':
    rospy.init_node('b00856266FollowerA', anonymous=True)

    # Spawning the followerA turtle
    rospy.wait_for_service('/spawn')
    spawn_service = rospy.ServiceProxy('/spawn', Spawn)

    turtle_name = rospy.get_param('~turtle_name', 'b00856266followerA')
    start_x = rospy.get_param('~start_x', 2)
    start_y = rospy.get_param('~start_y', 2)
    start_theta = rospy.get_param('~start_theta', 0.9561945)

    try:
        response = spawn_service(start_x, start_y, start_theta, turtle_name)
        if response.name == turtle_name:
            rospy.loginfo('Successfully spawned {}'.format(turtle_name))
        else:
            rospy.logerr('Failed to spawn {}'.format(turtle_name))
    except rospy.ServiceException as e:
        rospy.logerr('Service call failed: {}'.format(e))

    follower_a = FollowerA()
    rospy.spin()


