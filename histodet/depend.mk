# robotpkg depend.mk for:	image/histodet
# Created:			Arnaud Degroote on Thu, 12 Sep 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HISTODET_DEPEND_MK:=${HISTODET_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		histodet
endif

ifeq (+,$(HISTODET_DEPEND_MK))
PREFER.histodet?=	robotpkg

DEPEND_USE+=		histodet

DEPEND_ABI.histodet?=	histodet>=1.0
DEPEND_DIR.histodet?=	../../wip/histodet

SYSTEM_SEARCH.histodet=\
	include/histodet/hsv.hpp \
	lib/libhistodet.so \
	'lib/pkgconfig/histodet.pc:/Version/s/[^0-9.]//gp'
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
