# robotpkg depend.mk for:	wip/transgen3
# Created:			Anthony Mallet on Thu, 12 Mar 2009
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
TRANSGEN3_DEPEND_MK:=	${TRANSGEN3_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		transgen3
endif

ifeq (+,$(TRANSGEN3_DEPEND_MK)) # -------------------------------------------

PREFER.transgen?=	robotpkg

DEPEND_USE+=		transgen3

DEPEND_ABI.transgen?=	transgen3>=1.0b0
DEPEND_DIR.transgen?=	../../wip/transgen3

SYSTEM_SEARCH.transgen=\
	bin/transgen3			\
	include/transgen/oprs-com.h	\
	lib/pkgconfig/transgen.pc	\
	lib/liboprs-com.a

endif # TRANSGEN3_DEPEND_MK -------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
