# robotpkg depend.mk for:	architecture/genom3-pocolibs
# Created:			Anthony Mallet on Fri, 19 Oct 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
GENOM3_POCOLIBS_DEPEND_MK:=	${GENOM3_POCOLIBS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		genom3-pocolibs
endif

ifeq (+,$(GENOM3_POCOLIBS_DEPEND_MK)) # ------------------------------------

DEPEND_USE+=		genom3-pocolibs
PREFER.genom3-pocolibs?=robotpkg

SYSTEM_SEARCH.genom3-pocolibs=\
	lib/libpocolibs-client.so				\
	'lib/pkgconfig/genom3-pocolibs.pc:/Version/s/[^0-9.]//gp'

DEPEND_ABI.genom3-pocolibs?=	genom3-pocolibs>=1.0
DEPEND_DIR.genom3-pocolibs?=	../../wip/genom3-pocolibs

endif # GENOM3_POCOLIBS_DEPEND_MK ------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
