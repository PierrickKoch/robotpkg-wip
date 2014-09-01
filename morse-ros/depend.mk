# robotpkg depend.mk for:	simulation/morse-ros
# Created:			Arnaud Degroote on Mon,  1 Sep 2014
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
MORSE_ROS_DEPEND_MK:=	${MORSE_ROS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=			morse-ros
endif

ifeq (+,$(MORSE_ROS_DEPEND_MK)) # -------------------------------------

PREFER.morse-ros?=		robotpkg

DEPEND_USE+=		morse-ros

DEPEND_ABI.morse-ros?=	morse-ros>=0.2
DEPEND_DIR.morse-ros?=	../../wip/morse-ros

SYSTEM_SEARCH.morse-ros=\
	${PYTHON_SYSLIBSEARCH}/morse/middleware/ros/abstract_ros.py

include ../../mk/sysdep/python.mk

endif # MORSE_ROS_DEPEND_MK -------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
