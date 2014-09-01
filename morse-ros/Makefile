# robotpkg Makefile for:	simulation/morse-ros
# Created:			Arnaud Degroote on Mon,  1 Sep 2014

PKGNAME=		morse-ros-${MORSE_VERSION}

include ../../simulation/morse/Makefile.common

COMMENT+=		(ROS bindings)

CMAKE_ARGS+=		-DBUILD_CORE_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_DOC_SUPPORT=OFF

CMAKE_ARGS+=		-DBUILD_POCOLIBS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_ROS_SUPPORT=ON
CMAKE_ARGS+=		-DBUILD_YARP2_SUPPORT=OFF

#include ../../interfaces/ros-common-msgs/depend.mk
include ../../wip/sysdep/py-yaml.mk
include ../../sysutils/py-rospkg/depend.mk
include ../../sysutils/py-catkin-pkg/depend.mk
include ../../simulation/morse/depend.mk
include ../../mk/robotpkg.mk
