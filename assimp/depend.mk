# robotpkg depend.mk for:	graphics/assimp
# Created:			matthieu on Thursday, November  4, 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
ASSIMP_DEPEND_MK:=	${ASSIMP_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		assimp
endif

ifeq (+,$(ASSIMP_DEPEND_MK)) # ---------------------------------------------

PREFER.assimp?=		robotpkg

DEPEND_USE+=		assimp

DEPEND_ABI.assimp?=	assimp>=1.1.700
DEPEND_DIR.assimp?=	../../graphics/assimp

SYSTEM_SEARCH.assimp= \
	include/assimp/assimp.h	\
	lib/libassimp.{so,dylib}

endif # ASSIMP_DEPEND_MK ---------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
