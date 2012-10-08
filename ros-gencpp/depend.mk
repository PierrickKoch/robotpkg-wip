# robotpkg depend.mk for:	interface/ros-gencpp
# Created:			Anthony Mallet on Mon,  8 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROS_GENCPP_DEPEND_MK:=	${ROS_GENCPP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-gencpp
endif

ifeq (+,$(ROS_GENCPP_DEPEND_MK)) # -----------------------------------------

PREFER.ros-gencpp?=	robotpkg

DEPEND_USE+=		ros-gencpp

DEPEND_ABI.ros-gencpp?=	ros-gencpp>=0.3.4
DEPEND_DIR.ros-gencpp?=	../../wip/ros-gencpp

SYSTEM_SEARCH.ros-gencpp=\
	bin/gen_cpp.py						\
	'share/gencpp/stack.xml:<version>/s/[^0-9.]//gp'	\
	'lib/pkgconfig/gencpp.pc:/Version/s/[^0-9.]//gp'

endif # ROS_GENCPP_DEPEND_MK -----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
