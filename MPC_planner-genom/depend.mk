# robotpkg depend.mk for:	path/MPC_planner-genom
# Created:			Arnaud Degroote on Tue, 10 Jan 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MPC_PLANNER_GENOM_DEPEND_MK:=	${MPC_PLANNER_GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		MPC_planner-genom
endif

ifeq (+,$(MPC_PLANNER_GENOM_DEPEND_MK))
PREFER.MPC_planner-genom?=	robotpkg

DEPEND_USE+=		MPC_planner-genom

DEPEND_ABI.MPC_planner-genom?=	MPC_planner-genom>=0.2
DEPEND_DIR.MPC_planner-genom?=	../../wip/MPC_planner-genom

SYSTEM_SEARCH.MPC_planner-genom=\
	include/MPC_planner/MPC_planner-Struct.h		\
	lib/pkgconfig/MPC_planner.pc

include ../../architecture/genom/depend.mk

endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
