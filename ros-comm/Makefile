# robotpkg Makefile for:	middleware/ros-comm
# Created:			Anthony Mallet on Tue,  9 Oct 2012
#

ROS_PKG=		ros-comm
ROS_VERSION=		1.8.15
PKGNAME=		${ROS_PKG}-${ROS_VERSION}

CATEGORIES=		middleware
ROS_COMMENT=		communications-related libraries and tools
HOMEPAGE=		http://www.ros.org/wiki/ros_comm

include ../../wip/ros18-base/Makefile.common

SUBST_CLASSES+=		py-distsetup

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/log4cxx/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../wip/catkin/depend.mk
include ../../wip/ros-core/depend.mk
include ../../wip/ros-genmsg/depend.mk
include ../../wip/ros-langs-dev/depend.mk
include ../../wip/ros-std-msgs/depend.mk
include ../../wip/ros-std-msgs/depend.mk
include ../../wip/roscpp-core/depend.mk
include ../../mk/sysdep/apr.mk
include ../../mk/sysdep/py-paramiko.mk
include ../../mk/sysdep/py-yaml.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
