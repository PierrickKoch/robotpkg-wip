# robotpkg depend.mk for:	mapping/libnabo
# Created:			Pierrick Koch on Thu, 27 Mar 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBNABO_DEPEND_MK:=${LIBNABO_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libnabo
endif

ifeq (+,$(LIBNABO_DEPEND_MK))
PREFER.libnabo?=	robotpkg

DEPEND_USE+=		libnabo

DEPEND_ABI.libnabo?=	libnabo>=1.0.4
DEPEND_DIR.libnabo?=	../../wip/libnabo

SYSTEM_SEARCH.libnabo= \
	include/nabo/nabo.h \
	lib/libnabo.so
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
