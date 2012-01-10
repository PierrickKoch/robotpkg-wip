# robotpkg depend.mk for:	mapping/MPC_DEMTreatment-genom
# Created:			Arnaud Degroote on Tue, 10 Jan 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
MPC_DEMTREATMENT_GENOM_DEPEND_MK:=	${MPC_DEMTREATMENT_GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		MPC_DEMTreatment-genom
endif

ifeq (+,$(MPC_DEMTREATMENT_GENOM_DEPEND_MK))
PREFER.MPC_DEMTreatment-genom?=	robotpkg

DEPEND_USE+=		MPC_DEMTreatment-genom

DEPEND_ABI.MPC_DEMTreatment-genom?=	MPC_DEMTreatment-genom>=0.2
DEPEND_DIR.MPC_DEMTreatment-genom?=	../../wip/MPC_DEMTreatment-genom

SYSTEM_SEARCH.MPC_DEMTreatment-genom=\
	include/MPC_DEMTreatment/MPC_DEMTreatment-Struct.h		\
	lib/pkgconfig/MPC_DEMTreatment.pc

include ../../architecture/genom/depend.mk

endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
