cmake_minimum_required(VERSION 3.0.2)
project(com760_Suhael_Ahmed)
find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
  message_generation
)

add_message_files(
  DIRECTORY src/msg
  FILES
  b00856266LeaderInstruction.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS rospy std_msgs message_runtime
)

