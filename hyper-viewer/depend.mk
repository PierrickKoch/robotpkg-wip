# robotpkg depend.mk for:	supervision/hyper-viewer
# Created:			Arnaud Degroote on Sun, 20 Apr 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HYPER_VIEWER_DEPEND_MK:=${HYPER_VIEWER_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hyper-viewer
endif

ifeq (+,$(HYPER_VIEWER_DEPEND_MK))
PREFER.hyper-viewer?=	robotpkg

DEPEND_USE+=		hyper-viewer

DEPEND_ABI.hyper?=	hyper-viewer>=0.10
DEPEND_DIR.hyper?=	../../wip/hyper-viewer

SYSTEM_SEARCH.hyper-viewer=\
	bin/hyper_replay
endif


DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
