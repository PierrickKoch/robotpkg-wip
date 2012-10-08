# robotpkg depend.mk for:	supervision/hyper_genom
# Created:			Arnaud Degroote on Mon,  8 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HYPER_GENOM_DEPEND_MK:=${HYPER_GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hyper_genom
endif

ifeq (+,$(HYPER_GENOM_DEPEND_MK))
PREFER.hyper_genom?=	robotpkg

DEPEND_USE+=		hyper_genom

DEPEND_ABI.hyper?=	hyper_genom>=0.9
DEPEND_DIR.hyper?=	../../wip/hyper_genom

SYSTEM_SEARCH.hyper_genom=\
	include/hyper/genom_model/genom_process.hh \
	lib/libhyper_genom.so 
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
