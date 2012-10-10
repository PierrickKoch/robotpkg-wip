# robotpkg depend.mk for:	middleware/ros-comm
# Created:			Anthony Mallet on Tue,  9 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROS_COMM_DEPEND_MK:=	${ROS_COMM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-comm
endif

ifeq (+,$(ROS_COMM_DEPEND_MK)) # -------------------------------------------

PREFER.ros-comm?=	robotpkg

DEPEND_USE+=		ros-comm

DEPEND_ABI.ros-comm?=	ros-comm>=1.8.15<1.9
DEPEND_DIR.ros-comm?=	../../wip/ros-comm

SYSTEM_SEARCH.ros-comm=\
	bin/roscore						\
	include/ros/common.h					\
	lib/libroscpp.so					\
	'share/ros_comm/stack.xml:/<version>/s/[^0-9.]//gp'	\
	'lib/pkgconfig/std_srvs.pc:/Version/s/[^0-9.]//gp'

endif # ROS_COMM_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}