# robotpkg depend.mk for:	planning/hatponboard-lib
# Created:			Raphaël Lallement, 22/05/2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HATPONBOARD-LIB_DEPEND_MK:=${HATPONBOARD-LIB_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hatponboard-lib
endif

ifeq (+,$(HATPONBOARD-LIB_DEPEND_MK))
PREFER.hatpconsole?=	robotpkg

DEPEND_USE+=		hatponboard-lib

DEPEND_ABI.hatponboard-lib?=	hatponboard-lib>=2.1.0
DEPEND_DIR.hatponboard-lib?=	../../wip/hatponboard-lib

SYSTEM_SEARCH.hatponboard-lib=\
	bin/hatpparser\
	include/hatponboard-lib/Entity.hh\
	lib/libhatp-tools.so\
	lib/libhatp-plan.so\
	lib/libhatp-planningsession.so\
	lib/pkgconfig/hatponboard-lib.pc\
	share/cmake/Modules/Findhatponbaord-lib.pc
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
