# Install script for directory: /home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/andre/Desktop/Untitled Folder/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/com760_Suhael_Ahmed/src/msg" TYPE FILE FILES "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/src/msg/b00856266LeaderInstruction.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/com760_Suhael_Ahmed/cmake" TYPE FILE FILES "/home/andre/Desktop/Untitled Folder/build/com760_Suhael_Ahmed/catkin_generated/installspace/com760_Suhael_Ahmed-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/andre/Desktop/Untitled Folder/devel/include/com760_Suhael_Ahmed")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/andre/Desktop/Untitled Folder/devel/share/roseus/ros/com760_Suhael_Ahmed")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/andre/Desktop/Untitled Folder/devel/share/common-lisp/ros/com760_Suhael_Ahmed")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/andre/Desktop/Untitled Folder/devel/share/gennodejs/ros/com760_Suhael_Ahmed")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/andre/Desktop/Untitled Folder/devel/lib/python2.7/dist-packages/com760_Suhael_Ahmed")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/andre/Desktop/Untitled Folder/devel/lib/python2.7/dist-packages/com760_Suhael_Ahmed")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/andre/Desktop/Untitled Folder/build/com760_Suhael_Ahmed/catkin_generated/installspace/com760_Suhael_Ahmed.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/com760_Suhael_Ahmed/cmake" TYPE FILE FILES "/home/andre/Desktop/Untitled Folder/build/com760_Suhael_Ahmed/catkin_generated/installspace/com760_Suhael_Ahmed-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/com760_Suhael_Ahmed/cmake" TYPE FILE FILES
    "/home/andre/Desktop/Untitled Folder/build/com760_Suhael_Ahmed/catkin_generated/installspace/com760_Suhael_AhmedConfig.cmake"
    "/home/andre/Desktop/Untitled Folder/build/com760_Suhael_Ahmed/catkin_generated/installspace/com760_Suhael_AhmedConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/com760_Suhael_Ahmed" TYPE FILE FILES "/home/andre/Desktop/Untitled Folder/src/com760_Suhael_Ahmed/package.xml")
endif()

