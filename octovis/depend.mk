# robotpkg depend.mk for:	mapping/octoviz
# Created:			Arnaud Degroote on Wed, 22 May 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OCTOVIS_DEPEND_MK:=	${OCTOVIS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		octovis
endif

ifeq (+,$(OCTOVIS_DEPEND_MK)) # ---------------------------------------------

PREFER.octovis?=		robotpkg

DEPEND_USE+=		octovis

DEPEND_ABI.octovis?=	octovis>=1.6.0
DEPEND_DIR.octovis?=	../../wip/octovis

SYSTEM_SEARCH.octovis= \
	bin/octovis.h
	lib/liboctovis.so \
	'lib/pkgconfig/octovis.pc:/Version/s/[^0-9.]//gp'

endif # OCTOVIS_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
