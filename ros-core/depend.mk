# robotpkg depend.mk for:	sysutils/py-rospkg
# Created:			Anthony Mallet on Sun, 15 Jul 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROS_CORE_DEPEND_MK:=	${ROS_CORE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-core
endif

ifeq (+,$(ROS_CORE_DEPEND_MK)) # -------------------------------------------

PREFER.ros-core?=	robotpkg

DEPEND_USE+=		ros-core

DEPEND_ABI.ros-core?=	ros-core>=1.8<1.9
DEPEND_DIR.ros-core?=	../../wip/ros-core

SYSTEM_SEARCH.ros-core=\
	bin/rosrun					\
	lib/libroslib.so				\
	'lib/pkgconfig/roslib.pc:/Version/s/[^0-9.]//gp'

endif # ROS_CORE_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
