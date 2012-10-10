# robotpkg depend.mk for:	middleware/ros-actionlib
# Created:			Anthony Mallet on Wed, 10 Oct 2012
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_ACTIONLIB_DEPEND_MK:=	${ROS_ACTIONLIB_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-actionlib
endif

ifeq (+,$(ROS_ACTIONLIB_DEPEND_MK)) # --------------------------------------

PREFER.ros-actionlib?=	robotpkg

DEPEND_USE+=		ros-actionlib

DEPEND_ABI.ros-actionlib?=	ros-actionlib>=1.8.7<1.9
DEPEND_DIR.ros-actionlib?=	../../wip/ros-actionlib

SYSTEM_SEARCH.ros-actionlib=\
	include/actionlib/server/action_server.h		\
	lib/libactionlib.so					\
	'share/actionlib/stack.xml:/<version>/s/[^0-9.]//gp'	\
	'lib/pkgconfig/actionlib.pc:/Version/s/[^0-9.]//gp'

endif # ROS_ACTIONLIB_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
