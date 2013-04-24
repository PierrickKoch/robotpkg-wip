# robotpkg depend.mk for:	motion/ompl
# Created:			Arnaud Degroote on Wed, 24 Apr 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
OMPL_DEPEND_MK:=	${OMPL_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		ompl
endif

ifeq (+,$(OMPL_DEPEND_MK)) # ---------------------------------------------

PREFER.ompl?=		robotpkg

DEPEND_USE+=		ompl

DEPEND_ABI.ompl?=	ompl>=0.12.2
DEPEND_DIR.ompl?=	../../wip/ompl

SYSTEM_SEARCH.ompl= \
	include/ompl/config.h	\
	lib/libompl.so \
	'lib/pkgconfig/ompl.pc:/Version/s/[^0-9.]//gp'

endif # OMPL_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
