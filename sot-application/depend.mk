# robotpkg depend.mk for:	robots/sot-application
# Created:			Aurélie Clodic on Wed, 10 Jun 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
SOT_APPLICATION_DEPEND_MK:=	${SOT_APPLICATION_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		sot-application
endif

ifeq (+,$(SOT_APPLICATION_DEPEND_MK)) # -------------------------------------------

PREFER.sot-application?=	robotpkg

SYSTEM_SEARCH.sot-application=\
	'lib/pkgconfig/sot-romeo.pc:/Version/s/[^0-9.]//gp'

DEPEND_USE+=		sot-application

DEPEND_ABI.sot-romeo?=	sot-application>=1.0.0
DEPEND_DIR.sot-romeo?=	../../robots/sot-application

endif # SOT_ROMEO_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
