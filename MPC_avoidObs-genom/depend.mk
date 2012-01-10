# robotpkg depend.mk for:	path/MPC_avoidObs-genom
# Created:			Arnaud Degroote on Tue, 10 Jan 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MPC_AVOIDOBS_GENOM_DEPEND_MK:=	${MPC_AVOIDOBS_GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		MPC_avoidObs-genom
endif

ifeq (+,$(MPC_AVOIDOBS_GENOM_DEPEND_MK))
PREFER.MPC_avoidObs-genom?=	robotpkg

DEPEND_USE+=		MPC_avoidObs-genom

DEPEND_ABI.MPC_avoidObs-genom?=	MPC_avoidObs-genom>=0.2
DEPEND_DIR.MPC_avoidObs-genom?=	../../wip/MPC_avoidObs-genom

SYSTEM_SEARCH.MPC_avoidObs-genom=\
	include/MPC_avoidObs/MPC_avoidObs-Struct.h		\
	lib/pkgconfig/MPC_avoidObs.pc

include ../../architecture/genom/depend.mk

endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
