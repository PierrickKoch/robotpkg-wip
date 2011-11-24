# robotpkg depend.mk for:	math/lastwave
# Created:			Xavier Broquere on Thu, 24 Nov 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LASTWAVE_DEPEND_MK:=	${LASTWAVE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		softMotion-libs
endif

ifeq (+,$(LASTWAVE_DEPEND_MK)) # ----------------------------------

PREFER.softMotion-libs?=	robotpkg

SYSTEM_SEARCH.softMotion-libs=\
	include/lastwave/lastwave.h 				\
	'lib/pkgconfig/lastwave.pc:/Version/s/[^0-9.]//gp'	\
	'lib/liblastwave.so'

DEPEND_USE+=		lastwave

DEPEND_ABI.lastwave?=lastwave>=3.1
DEPEND_DIR.lastwave?=../../wip/lastwave

endif # LASTWAVE_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
