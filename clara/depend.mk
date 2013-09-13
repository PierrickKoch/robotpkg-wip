# robotpkg depend.mk for:	mapping/clara
# Created:			Pierrick Koch on Fri, 13 Sep 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
CLARA_DEPEND_MK:=${CLARA_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		clara
endif

ifeq (+,$(CLARA_DEPEND_MK))
PREFER.clara?=	robotpkg

DEPEND_USE+=		clara

DEPEND_ABI.clara?=	clara>=0.1
DEPEND_DIR.clara?=	../../wip/clara

SYSTEM_SEARCH.clara= \
	bin/clara_dtm \
	bin/clara_region
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
