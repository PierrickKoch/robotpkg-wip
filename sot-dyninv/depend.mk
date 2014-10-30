# robotpkg depend.mk for:	wip/sot-dyninv
# Created:			Aurelie Clodic on Thu, 30 Oct 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_CORE_DEPEND_MK:=	${SOT-DYNINV_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-dyninv
endif

ifeq (+,$(SOT-DYNINV_DEPEND_MK)) # -------------------------------------------

PREFER.sot-dyninv?=	robotpkg

SYSTEM_SEARCH.sot-dyninv=\
	include/sot-dyninv/config.h				\
	'lib/pkgconfig/sot-dyninv.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-dyninv

DEPEND_ABI.sot-dyninv?=	sot-dyninv>=2.0.0
DEPEND_DIR.sot-dyninv?=	../../wip/sot-dyninv

endif # SOT_DYNINV_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
