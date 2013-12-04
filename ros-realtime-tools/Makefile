# robotpkg Makefile for:	devel/ros-realtime-tools
# Created:			Aurelie Clodic on Thu, 28 Nov 2013
#

ROS_PKG=	realtime_tools
ROS_VERSION=	1.8.2
ROS_REPO=	ros-controls

CATEGORIES=	devel
ROS_COMMENT=	provides a realtime publisher, which makes it possible to publish messages to a ROS topic from a reatime thread
HOMEPAGE=	wiki.ros.org/realtime_tools

include ../../meta-pkgs/ros-base/Makefile.common

CMAKE_ARGS+=	-DTINYXML_ROOT=${PREFIX.tinyxml}

include ../../devel/ros-catkin/depend.mk
include ../../middleware/ros-comm/depend.mk
include ../../mk/sysdep/tinyxml.mk
include ../../mk/robotpkg.mk

