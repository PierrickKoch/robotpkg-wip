# robotpkg depend.mk for:	interface/ros-langs-dev
# Created:			Anthony Mallet on Mon,  8 Oct 2012
#

DEPEND_DEPTH:=			${DEPEND_DEPTH}+
ROS_LANGS_DEV_DEPEND_MK:=	${ROS_LANGS_DEV_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-langs-dev
endif

ifeq (+,$(ROS_LANGS_DEV_DEPEND_MK)) # --------------------------------------

PREFER.ros-langs-dev?=	robotpkg

DEPEND_USE+=		ros-langs-dev

DEPEND_ABI.ros-langs-dev?=ros-langs-dev>=0.1.3
DEPEND_DIR.ros-langs-dev?=../../wip/ros-langs-dev

SYSTEM_SEARCH.ros-langs-dev=\
	'share/langs-dev/stack.xml:/<version>/s/[^0-9.]//gp'	\
	'lib/pkgconfig/langs-dev.pc:/Version/s/[^0-9.]//gp'

endif # ROS_LANGS_DEV_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
