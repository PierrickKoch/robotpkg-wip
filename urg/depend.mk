# robotpkg depend.mk for:	hardware/urg
# Created:			Arnaud Degroote on Mon, 16 Dec 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
URG_DEPEND_MK:=${URG_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		urg
endif

ifeq (+,$(URG_DEPEND_MK))
PREFER.urg?=	robotpkg

DEPEND_USE+=		urg

DEPEND_ABI.urg?=	urg>=0.8.18
DEPEND_DIR.urg?=	../../wip/urg

SYSTEM_SEARCH.urg=\
	bin/urg-config \
	include/urg/UrgCtrl.h
	lib/liburg.so 
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
