# Install script for directory: /home/wenws/11_GPS_LiDAR_NLOS_C/src/hdl_graph_slam

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wenws/11_GPS_LiDAR_NLOS_C/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdl_graph_slam/msg" TYPE FILE FILES "/home/wenws/11_GPS_LiDAR_NLOS_C/src/hdl_graph_slam/msg/FloorCoeffs.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdl_graph_slam/srv" TYPE FILE FILES "/home/wenws/11_GPS_LiDAR_NLOS_C/src/hdl_graph_slam/srv/SaveMap.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdl_graph_slam/cmake" TYPE FILE FILES "/home/wenws/11_GPS_LiDAR_NLOS_C/build/hdl_graph_slam/catkin_generated/installspace/hdl_graph_slam-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wenws/11_GPS_LiDAR_NLOS_C/devel/include/hdl_graph_slam")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wenws/11_GPS_LiDAR_NLOS_C/devel/share/roseus/ros/hdl_graph_slam")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wenws/11_GPS_LiDAR_NLOS_C/devel/share/common-lisp/ros/hdl_graph_slam")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/wenws/11_GPS_LiDAR_NLOS_C/devel/lib/python2.7/dist-packages/hdl_graph_slam")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/wenws/11_GPS_LiDAR_NLOS_C/devel/lib/python2.7/dist-packages/hdl_graph_slam")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wenws/11_GPS_LiDAR_NLOS_C/build/hdl_graph_slam/catkin_generated/installspace/hdl_graph_slam.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdl_graph_slam/cmake" TYPE FILE FILES "/home/wenws/11_GPS_LiDAR_NLOS_C/build/hdl_graph_slam/catkin_generated/installspace/hdl_graph_slam-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdl_graph_slam/cmake" TYPE FILE FILES
    "/home/wenws/11_GPS_LiDAR_NLOS_C/build/hdl_graph_slam/catkin_generated/installspace/hdl_graph_slamConfig.cmake"
    "/home/wenws/11_GPS_LiDAR_NLOS_C/build/hdl_graph_slam/catkin_generated/installspace/hdl_graph_slamConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hdl_graph_slam" TYPE FILE FILES "/home/wenws/11_GPS_LiDAR_NLOS_C/src/hdl_graph_slam/package.xml")
endif()

