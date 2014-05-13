# robotpkg depend.mk for:	mapping/libpointmatcher
# Created:			Pierrick Koch on Thu, 27 Mar 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBPOINTMATCHER_DEPEND_MK:=${LIBPOINTMATCHER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libpointmatcher
endif

ifeq (+,$(LIBPOINTMATCHER_DEPEND_MK))
PREFER.libpointmatcher?=	robotpkg

DEPEND_USE+=		libpointmatcher

DEPEND_ABI.libpointmatcher?=	libpointmatcher>=1.1.0
DEPEND_DIR.libpointmatcher?=	../../wip/libpointmatcher

SYSTEM_SEARCH.libpointmatcher= \
	include/pointmatcher/PointMatcher.h \
	lib/libpointmatcher.a
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
