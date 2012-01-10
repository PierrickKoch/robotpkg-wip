# robotpkg depend.mk for:	path/MPC_controller-genom
# Created:			Arnaud Degroote on Tue, 10 Jan 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MPC_CONTROLLER_GENOM_DEPEND_MK:=	${MPC_CONTROLLER_GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		MPC_controller-genom
endif

ifeq (+,$(MPC_CONTROLLER_GENOM_DEPEND_MK))
PREFER.MPC_controller-genom?=	robotpkg

DEPEND_USE+=		MPC_controller-genom

DEPEND_ABI.MPC_controller-genom?=	MPC_controller-genom>=0.2
DEPEND_DIR.MPC_controller-genom?=	../../wip/MPC_controller-genom

SYSTEM_SEARCH.MPC_controller-genom=\
	include/MPC_controller/MPC_controller-Struct.h		\
	lib/pkgconfig/MPC_controller.pc

include ../../architecture/genom/depend.mk

endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
