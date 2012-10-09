# robotpkg depend.mk for:	interface/ros-common-msgs
# Created:			Anthony Mallet on Tue,  9 Oct 2012
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_COMMON_MSGS_DEPEND_MK:=	${ROS_COMMON_MSGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			ros-common-msgs
endif

ifeq (+,$(ROS_COMMON_MSGS_DEPEND_MK)) # ------------------------------------

PREFER.ros-common-msgs?=	robotpkg

DEPEND_USE+=			ros-common-msgs

DEPEND_ABI.ros-common-msgs?=	ros-common-msgs>=1.8.13<1.9
DEPEND_DIR.ros-common-msgs?=	../../wip/ros-common-msgs

SYSTEM_SEARCH.ros-common-msgs=\
	include/actionlib_msgs/GoalID.h				\
	'${PYTHON_SYSLIBSEARCH}/actionlib_msgs/msg/_GoalID.py'	\
	share/common-lisp/ros/actionlib_msgs/msg/GoalID.lisp	\
	'share/common_msgs/stack.xml:/<version>/s/[^0-9.]//gp'	\
	'lib/pkgconfig/actionlib_msgs.pc:/Version/s/[^0-9.]//gp'

include ../../mk/sysdep/python.mk

endif # ROS_COMMON_MSGS_DEPEND_MK ------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
