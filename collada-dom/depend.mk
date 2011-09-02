# robotpkg depend.mk for:	graphics/collada_dom
# Created:			Francois Lancelot on Thur, 01 Sep 2011
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
COLLADADOM_DEPEND_MK:=		${COLLADADOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		collada_dom 
endif

ifeq (+,$(COLLADADOM_DEPEND_MK)) # ------------------------------------------------

PREFER.collada_dom?=		robotpkg

SYSTEM_SEARCH.collada_dom=\
	include/collada_dom/dae.h	\
	lib/collada15dom.so

DEPEND_USE+=		collada_dom 

DEPEND_ABI.pqp?=	collada_dom >=2.3.1
DEPEND_DIR.pqp?=	../../graphics/collada_dom

endif # COLLADADOM_DEPEND_MK ------------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
