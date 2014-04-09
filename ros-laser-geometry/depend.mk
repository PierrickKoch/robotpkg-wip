# robotpkg depend.mk for:	perception/ros-laser-geometry
# Created:			Charles Lesire on Tue, 8 Mar 2014
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_LASER_GEOMETRY_DEPEND_MK:=	${ROS_LASER_GEOMETRY_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			ros-laser-geometry
endif

ifeq (+,$(ROS_LASER_GEOMETRY_DEPEND_MK)) # ------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-laser-geometry?=	${PREFER.ros-base}
SYSTEM_PREFIX.ros-laser-geometry?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=			ros-laser-geometry
ROS_DEPEND_USE+=		ros-laser-geometry

DEPEND_ABI.ros+=		ros>=groovy
DEPEND_ABI.ros-laser-geometry?=	ros-laser-geometry>=1.5
DEPEND_DIR.ros-laser-geometry?=	../../wip/ros-laser-geometry

DEPEND_ABI.ros-laser-geometry.groovy?=	ros-laser-geometry>=1.5<1.6
DEPEND_ABI.ros-laser-geometry.hydro?=	ros-laser-geometry>=1.6<1.7

SYSTEM_SEARCH.ros-laser-geometry=\
	include/laser_geometry/laser_geometry.h \
	lib/liblaser_geometry.so \
	lib/pkgconfig/laser_geometry.pc \
	share/laser_geometry/package.xml

endif # ROS_LASER_GEOMETRY_DEPEND_MK ------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
