


## Readme File

This readme file provides the correct order of commands for executing a specific task.

## Instructions

1. Open a terminal.
2. Navigate to the root of the workspace.
3. Run the following commands in the given order:

```bash
roscore
4. Open another terminal.
catkin_make
source devel/setup.bash
rostopic list
/b00856266FollowerA/cmd_vel
/b00856266FollowerA/color_sensor
/b00856266FollowerA/pose
/b00856266FollowerB/cmd_vel
/b00856266FollowerB/color_sensor
/b00856266FollowerB/pose

source devel/setup.bash
chmod +x {scripts}.py

roslaunch com760_Suhael_Ahmed b00856266.launch
