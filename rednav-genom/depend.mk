# robotpkg depend.mk for:	wip/rednav-genom
# Created:			Arnaud Degroote on Sat, 19 Mar 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
REDNAVGENOM_DEPEND_MK:=	${REDNAVGENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		rednav-genom
endif

ifeq (+,$(REDNAVGENOM_DEPEND_MK))
PREFER.rednav-genom?=	robotpkg

DEPEND_USE+=		rednav-genom

DEPEND_ABI.rednav-genom?=	rednav-genom>=0.4
DEPEND_DIR.rednav-genom?=	../../path/rednav-genom

SYSTEM_SEARCH.rednav-genom=\
	include/rednav/rednavStruct.h		\
	lib/pkgconfig/rednav.pc
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
