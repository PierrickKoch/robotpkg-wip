# robotpkg depend.mk for:	wip/jafar-lgl
# Created:			Redouane Boumghar on Thu, 17 Mar 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
jafar-lgl_DEPEND_MK:=	${jafar-lgl_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jafar-lgl
endif

ifeq (+,$(jafar-lgl_DEPEND_MK)) # -----------------------------------------------

PREFER.jafar-lgl?=		robotpkg

DEPEND_USE+=		jafar-lgl
DEPEND_ABI.jafar-lgl?=	jafar-lgl>=1.1
DEPEND_DIR.jafar-lgl?=	../../wip/jafar-lgl

SYSTEM_SEARCH.jafar-lgl=\
	include/jafar/lgl/lglException.hpp	\
	lib/libjafar-lgl.so

endif # jafar-lgl_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
