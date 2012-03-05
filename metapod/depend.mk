# robotpkg depend.mk for:	math/metapod
# Created:			Antonio El Khoury on Wed, 29 Feb 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
METAPOD_DEPEND_MK:=	${METAPOD_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		metapod
endif

ifeq (+,$(METAPOD_DEPEND_MK)) # ---------------------------

PREFER.metapod?=	robotpkg

DEPEND_USE+=		metapod

DEPEND_ABI.metapod?=	metapod>=1.0.1
DEPEND_DIR.metapod?=	../../math/metapod

SYSTEM_SEARCH.metapod=			\
	include/metapod/algos/rnea.hh	\
	'lib/pkgconfig/metapod.pc:/Version/s/[^0-9.]//gp'

endif # METAPOD_DEPEND_MK ---------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
