# robotpkg depend.mk for:	mapping/gladys
# Created:			Pierrick Koch on Mon, 19 Aug 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
GLADYS_DEPEND_MK:=${GLADYS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		gladys
endif

ifeq (+,$(GLADYS_DEPEND_MK))
PREFER.gladys?=	robotpkg

DEPEND_USE+=		gladys

DEPEND_ABI.gladys?=	gladys>=0.1
DEPEND_DIR.gladys?=	../../wip/gladys

SYSTEM_SEARCH.gladys= \
	include/gladys/gladys.hpp \
	lib/libgladys.so \
	'lib/pkgconfig/gladys.pc:/Version/s/[^0-9.]//gp'
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
