# robotpkg depend.mk for:	mapping/atlaas
# Created:			Pierrick Koch on Tue, 26 Nov 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ATLAAS_DEPEND_MK:=${ATLAAS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		atlaas
endif

ifeq (+,$(ATLAAS_DEPEND_MK))
PREFER.atlaas?=	robotpkg

DEPEND_USE+=		atlaas

DEPEND_ABI.atlaas?=	atlaas>=0.1
DEPEND_DIR.atlaas?=	../../wip/atlaas

SYSTEM_SEARCH.atlaas= \
	include/atlaas/atlaas.hpp \
	lib/libatlaas.so \
	'lib/pkgconfig/atlaas.pc:/Version/s/[^0-9.]//gp'
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
