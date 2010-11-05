# robotpkg depend.mk for:	wip/liblbfgs
# Created:			Anthony Mallet on Fri, 14 Mar 2008
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBLBFGS_DEPEND_MK:=	${LIBLBFGS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		liblbfgs
endif

ifeq (+,$(LIBLBFGS_DEPEND_MK)) # ---------------------------------------------

PREFER.liblbfgs?=		robotpkg

DEPEND_USE+=		liblbfgs
DEPEND_ABI.liblbfgs?=	liblbfgs>=1.9
DEPEND_DIR.liblbfgs?=	../../wip/liblbfgs

SYSTEM_SEARCH.liblbfgs=\
	include/lbfgs.h		\
	lib/liblbfgs.la

endif # LIBLBFGS_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
