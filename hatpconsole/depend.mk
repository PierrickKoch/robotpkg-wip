# robotpkg depend.mk for:	planning/hatpconsole
# Created:			Raphaël Lallement, 22/01/2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HATPCONSOLE_DEPEND_MK:=${HATPCONSOLE_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hatpconsole
endif

ifeq (+,$(HATPCONSOLE_DEPEND_MK))
PREFER.hatpconsole?=	robotpkg

DEPEND_USE+=		hatpconsole

DEPEND_ABI.hatpconsole?=	hatpconsole>=1.0.0
DEPEND_DIR.hatpconsole?=	../../wip/hatpconsole

SYSTEM_SEARCH.hatpconsole=\
	bin/hatpconsole \
	lib/libHATPC_Plan.so
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
