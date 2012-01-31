# robotpkg depend.mk for:	wip/jafar-gdhe
# Created:			Cyril Roussillon on Wed, 15 Jun 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
jafar-gdhe_DEPEND_MK:=	${jafar-gdhe_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jafar-gdhe
endif

ifeq (+,$(jafar-gdhe_DEPEND_MK)) # -----------------------------------------------

PREFER.jafar-gdhe?=		robotpkg

DEPEND_USE+=		jafar-gdhe
DEPEND_ABI.jafar-gdhe?=	jafar-gdhe>=0.1
DEPEND_DIR.jafar-gdhe?=	../../wip/jafar-gdhe

SYSTEM_SEARCH.jafar-gdhe=\
	include/jafar/gdhe/gdheException.hpp	\
	lib/libjafar-gdhe.so

endif # jafar-gdhe_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
