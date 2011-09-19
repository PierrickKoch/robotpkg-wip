# robotpkg depend.mk for:	graphics/collada-dom
# Created:			Francois Lancelot on Thur, 01 Sep 2011
#
DEPEND_DEPTH:=		${DEPEND_DEPTH}+
COLLADADOM_DEPEND_MK:=		${COLLADADOM_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		collada-dom 
endif

ifeq (+,$(COLLADADOM_DEPEND_MK)) # ------------------------------------------------

PREFER.collada-dom?=		robotpkg

SYSTEM_SEARCH.collada-dom=\
	include/collada-dom/dae.h	\
	lib/libcollada15dom.so

DEPEND_USE+=		collada-dom 

DEPEND_ABI.collada-dom?=	collada-dom >=2.3.1
DEPEND_DIR.collada-dom?=	../../wip/collada-dom

endif # COLLADADOM_DEPEND_MK ------------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
