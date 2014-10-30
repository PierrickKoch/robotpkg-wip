# robotpkg depend.mk for:	wip/soth
# Created:			Aurelie Clodic on Thu, 30 Oct 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_CORE_DEPEND_MK:=	${SOTH_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		soth
endif

ifeq (+,$(SOTH_DEPEND_MK)) # -------------------------------------------

PREFER.soth?=	robotpkg

SYSTEM_SEARCH.soth=\
	include/sot/config.h				\
	lib/libsoth.so					\
	'lib/pkgconfig/soth.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		soth

DEPEND_ABI.soth?=	soth>=2.0.0
DEPEND_DIR.soth?=	../../wip/soth

endif # SOTH_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
