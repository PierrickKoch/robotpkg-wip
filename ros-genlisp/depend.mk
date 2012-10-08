# robotpkg depend.mk for:	interface/ros-genlisp
# Created:			Anthony Mallet on Mon,  8 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ROS_GENLISP_DEPEND_MK:=	${ROS_GENLISP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ros-genlisp
endif

ifeq (+,$(ROS_GENLISP_DEPEND_MK)) # ----------------------------------------

PREFER.ros-genlisp?=	robotpkg

DEPEND_USE+=		ros-genlisp

DEPEND_ABI.ros-genlisp?=ros-genlisp>=0.3.3
DEPEND_DIR.ros-genlisp?=../../wip/ros-genlisp

SYSTEM_SEARCH.ros-genlisp=\
	bin/gen_lisp.py					\
	'share/genlisp/stack.xml:<version>/s/[^0-9.]//gp'	\
	'lib/pkgconfig/genlisp.pc:/Version/s/[^0-9.]//gp'

endif # ROS_GENLISP_DEPEND_MK ----------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
