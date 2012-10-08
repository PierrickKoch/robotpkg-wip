# robotpkg depend.mk for:	interface/ros-langs
# Created:			Anthony Mallet on Mon,  8 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROS_LANGS_DEPEND_MK:=	${ROS_LANGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-langs
endif

ifeq (+,$(ROS_LANGS_DEPEND_MK)) # ------------------------------------------

PREFER.ros-langs?=	robotpkg

DEPEND_USE+=		ros-langs

DEPEND_ABI.ros-langs?=	ros-langs>=0.3.5
DEPEND_DIR.ros-langs?=	../../wip/ros-langs

SYSTEM_SEARCH.ros-langs=\
	'share/langs/stack.xml:<version>/s/[^0-9.]//gp'	\
	'lib/pkgconfig/langs.pc:/Version/s/[^0-9.]//gp'

endif # ROS_LANGS_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
