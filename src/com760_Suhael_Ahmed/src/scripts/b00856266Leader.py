#!/usr/bin/env python
import rospy
from com760_Suhael_Ahmed.msg import b00856266LeaderInstruction
from turtlesim.srv import Spawn
import sys
import select
import termios
import tty
settings = termios.tcgetattr(sys.stdin)
def get_key():
    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

def leader_publisher():
    rospy.init_node('b00856266Leader', anonymous=True)
    pub = rospy.Publisher('leader_instruction', b00856266LeaderInstruction, queue_size=10)
    rate = rospy.Rate(1)  # 1 Hz

    instruction_formation = b00856266LeaderInstruction()
    instruction_formation.instructionID = 0
    instruction_formation.message = "Move to the formation position"

    instruction_start = b00856266LeaderInstruction()
    instruction_start.instructionID = 1
    instruction_start.message = "Move to the start position"

    while not rospy.is_shutdown():
        key = get_key()  # Read keyboard input

        if key == '0':
            rospy.loginfo("sending instruction 0")
            pub.publish(instruction_formation)
        elif key == '1':
            rospy.loginfo("sending instruction 1")
            pub.publish(instruction_start)
        elif key == 'q':
            break  # Exit the loop if 'q' is pressed

        rate.sleep()

if __name__ == '__main__':
    try:
        leader_publisher()
    except rospy.ROSInterruptException:
        pass
