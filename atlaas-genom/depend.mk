# robotpkg depend.mk for:	mapping/atlaas-genom
# Created:			Pierrick Koch on Tue, 26 Nov 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ATLAAS_GENOM_DEPEND_MK:=${ATLAAS_GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		atlaas-genom
endif

ifeq (+,$(ATLAAS_GENOM_DEPEND_MK))
PREFER.atlaas-genom?=	robotpkg

DEPEND_USE+=		atlaas-genom

DEPEND_ABI.atlaas-genom?=	atlaas-genom>=0.1
DEPEND_DIR.atlaas-genom?=	../../wip/atlaas-genom

SYSTEM_SEARCH.atlaas-genom= \
	bin/atlaas \
	include/atlaas/atlaas_struct.h
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
