# robotpkg depend.mk for:	image/jafar-image
# Created:			Cyril Roussillon on Wed, 15 Jun 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
jafar-image_DEPEND_MK:=	${jafar-image_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		jafar-image
endif

ifeq (+,$(jafar-image_DEPEND_MK)) # -----------------------------------------------

PREFER.jafar-image?=		robotpkg

DEPEND_USE+=		jafar-image
DEPEND_ABI.jafar-image?=	jafar-image>=2.1
DEPEND_DIR.jafar-image?=	../../wip/jafar-image

SYSTEM_SEARCH.jafar-image=\
	include/jafar/image/imageException.hpp	\
	lib/libjafar-image.so

endif # jafar-image_DEPEND_MK ----------------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
