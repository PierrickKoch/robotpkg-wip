# robotpkg Makefile for:	perception/ros-laser-geometry
# Created:			Charles Lesire on Tue, 8 Mar 2014
#

ROS_PKG=		laser_geometry
ROS_VERSION=		1.5.14
ROS_REPO=		ros-perception

CATEGORIES=		perception
ROS_COMMENT=		provides the LaserProjection class for turning laser scan data into point clouds

include ../../meta-pkgs/ros-base/Makefile.common

include ../../interfaces/ros-common-msgs/depend.mk
include ../../lang/ros-gencpp/depend.mk
include ../../math/ros-geometry/depend.mk
include ../../math/ros-angles/depend.mk
include ../../math/eigen3/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk

include ../../devel/ros-catkin/depend.mk
include ../../mk/robotpkg.mk
