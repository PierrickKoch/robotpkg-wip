# robotpkg depend.mk for:	graphics/ros-rviz
# Created:			Charles Lesire on Wed, 9 Apr 2014
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_ROBOT_STATE_PUBLISHER_DEPEND_MK:=	${ROS_ROBOT_STATE_PUBLISHER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			ros-robot-state-publisher
endif

ifeq (+,$(ROS_ROBOT_STATE_PUBLISHER_DEPEND_MK)) # --------------------------------------

include ../../meta-pkgs/ros-base/depend.common
PREFER.ros-robot-state-publisher?=		${PREFER.ros-base}
SYSTEM_PREFIX.ros-robot-state-publisher?=	${SYSTEM_PREFIX.ros-base}

DEPEND_USE+=			ros-robot-state-publisher
ROS_DEPEND_USE+=		ros-robot-state-publisher

DEPEND_ABI.ros-robot-state-publisher?=	ros-robot-state-publisher>=1.9
DEPEND_DIR.ros-robot-state-publisher=	../../wip/ros-robot-state-publisher

DEPEND_ABI.ros += ros>=groovy

SYSTEM_SEARCH.ros-robot-state-publisher=\
	include/robot_state_publisher/robot_state_publisher.h		\
	lib/robot_state_publisher/robot_state_publisher					\
	'share/robot_state_publisher/${ROS_STACKAGE}:/<version>/s/[^0-9.]//gp'	\
	'lib/pkgconfig/robot_state_publisher.pc:/Version/s/[^0-9.]//gp'

endif # ROS_ROBOT_STATE_PUBLISHER_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
