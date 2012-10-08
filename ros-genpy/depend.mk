# robotpkg depend.mk for:	interface/ros-genpy
# Created:			Anthony Mallet on Mon,  8 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROS_GENPY_DEPEND_MK:=	${ROS_GENPY_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-genpy
endif

ifeq (+,$(ROS_GENPY_DEPEND_MK)) # ------------------------------------------

PREFER.ros-genpy?=	robotpkg

DEPEND_USE+=		ros-genpy

DEPEND_ABI.ros-genpy?=	ros-genpy>=0.3.4
DEPEND_DIR.ros-genpy?=	../../wip/ros-genpy

SYSTEM_SEARCH.ros-genpy=\
	bin/genmsg_py.py				\
	'share/genpy/stack.xml:<version>/s/[^0-9.]//gp'	\
	'lib/pkgconfig/genpy.pc:/Version/s/[^0-9.]//gp'

endif # ROS_GENPY_DEPEND_MK ------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
