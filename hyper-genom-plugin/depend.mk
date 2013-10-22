# robotpkg depend.mk for:	supervision/hyper-genom-plugin
# Created:			Arnaud Degroote on Mon,  8 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HYPER_GENOM_DEPEND_MK:=${HYPER_GENOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hyper-genom-plugin
endif

ifeq (+,$(HYPER_GENOM_DEPEND_MK))
PREFER.hyper-genom-plugin?=	robotpkg

DEPEND_USE+=		hyper-genom-plugin

DEPEND_ABI.hyper?=	hyper-genom-plugin>=0.9
DEPEND_DIR.hyper?=	../../wip/hyper-genom-plugin

SYSTEM_SEARCH.hyper-genom-plugin=\
	include/hyper/genom_model/genom_process.hh \
	lib/libhyper_genom.so 
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
