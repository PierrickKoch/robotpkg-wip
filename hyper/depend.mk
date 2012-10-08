# robotpkg depend.mk for:	supervision/hyper
# Created:			Arnaud Degroote on Mon,  8 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HYPER_DEPEND_MK:=${HYPER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hyper
endif

ifeq (+,$(HYPER_DEPEND_MK))
PREFER.hyper?=	robotpkg

DEPEND_USE+=		hyper

DEPEND_ABI.hyper?=	hyper>=0.9
DEPEND_DIR.hyper?=	../../wip/hyper

SYSTEM_SEARCH.hyper=\
	bin/hyperc \
	include/hyper/hyperConfig.hh \
	lib/libhyper_model.so 
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
