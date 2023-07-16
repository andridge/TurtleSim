# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "com760_Suhael_Ahmed: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icom760_Suhael_Ahmed:/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(com760_Suhael_Ahmed_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg" NAME_WE)
add_custom_target(_com760_Suhael_Ahmed_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "com760_Suhael_Ahmed" "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(com760_Suhael_Ahmed
  "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/com760_Suhael_Ahmed
)

### Generating Services

### Generating Module File
_generate_module_cpp(com760_Suhael_Ahmed
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/com760_Suhael_Ahmed
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(com760_Suhael_Ahmed_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(com760_Suhael_Ahmed_generate_messages com760_Suhael_Ahmed_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg" NAME_WE)
add_dependencies(com760_Suhael_Ahmed_generate_messages_cpp _com760_Suhael_Ahmed_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(com760_Suhael_Ahmed_gencpp)
add_dependencies(com760_Suhael_Ahmed_gencpp com760_Suhael_Ahmed_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS com760_Suhael_Ahmed_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(com760_Suhael_Ahmed
  "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/com760_Suhael_Ahmed
)

### Generating Services

### Generating Module File
_generate_module_eus(com760_Suhael_Ahmed
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/com760_Suhael_Ahmed
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(com760_Suhael_Ahmed_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(com760_Suhael_Ahmed_generate_messages com760_Suhael_Ahmed_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg" NAME_WE)
add_dependencies(com760_Suhael_Ahmed_generate_messages_eus _com760_Suhael_Ahmed_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(com760_Suhael_Ahmed_geneus)
add_dependencies(com760_Suhael_Ahmed_geneus com760_Suhael_Ahmed_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS com760_Suhael_Ahmed_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(com760_Suhael_Ahmed
  "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/com760_Suhael_Ahmed
)

### Generating Services

### Generating Module File
_generate_module_lisp(com760_Suhael_Ahmed
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/com760_Suhael_Ahmed
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(com760_Suhael_Ahmed_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(com760_Suhael_Ahmed_generate_messages com760_Suhael_Ahmed_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg" NAME_WE)
add_dependencies(com760_Suhael_Ahmed_generate_messages_lisp _com760_Suhael_Ahmed_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(com760_Suhael_Ahmed_genlisp)
add_dependencies(com760_Suhael_Ahmed_genlisp com760_Suhael_Ahmed_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS com760_Suhael_Ahmed_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(com760_Suhael_Ahmed
  "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/com760_Suhael_Ahmed
)

### Generating Services

### Generating Module File
_generate_module_nodejs(com760_Suhael_Ahmed
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/com760_Suhael_Ahmed
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(com760_Suhael_Ahmed_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(com760_Suhael_Ahmed_generate_messages com760_Suhael_Ahmed_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg" NAME_WE)
add_dependencies(com760_Suhael_Ahmed_generate_messages_nodejs _com760_Suhael_Ahmed_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(com760_Suhael_Ahmed_gennodejs)
add_dependencies(com760_Suhael_Ahmed_gennodejs com760_Suhael_Ahmed_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS com760_Suhael_Ahmed_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(com760_Suhael_Ahmed
  "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/com760_Suhael_Ahmed
)

### Generating Services

### Generating Module File
_generate_module_py(com760_Suhael_Ahmed
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/com760_Suhael_Ahmed
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(com760_Suhael_Ahmed_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(com760_Suhael_Ahmed_generate_messages com760_Suhael_Ahmed_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg" NAME_WE)
add_dependencies(com760_Suhael_Ahmed_generate_messages_py _com760_Suhael_Ahmed_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(com760_Suhael_Ahmed_genpy)
add_dependencies(com760_Suhael_Ahmed_genpy com760_Suhael_Ahmed_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS com760_Suhael_Ahmed_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/com760_Suhael_Ahmed)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/com760_Suhael_Ahmed
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(com760_Suhael_Ahmed_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/com760_Suhael_Ahmed)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/com760_Suhael_Ahmed
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(com760_Suhael_Ahmed_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/com760_Suhael_Ahmed)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/com760_Suhael_Ahmed
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(com760_Suhael_Ahmed_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/com760_Suhael_Ahmed)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/com760_Suhael_Ahmed
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(com760_Suhael_Ahmed_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/com760_Suhael_Ahmed)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/com760_Suhael_Ahmed\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/com760_Suhael_Ahmed
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(com760_Suhael_Ahmed_generate_messages_py std_msgs_generate_messages_py)
endif()
