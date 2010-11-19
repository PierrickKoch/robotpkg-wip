# robotpkg depend.mk for:	hardware/libfreenect
# Created:			Matthieu Herrb on Mon, 15 Nov 2010
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
RMP_LIBS_DEPEND_MK:=${RMP_LIBS_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libfreenect
endif

ifeq (+,$(RMP_LIBS_DEPEND_MK))
PREFER.libfreenect?=	robotpkg

DEPEND_USE+=		libfreenect

DEPEND_ABI.libfreenect?=	libfreenect>=20101119
DEPEND_DIR.libfreenect?=	../../hardware/libfreenect

SYSTEM_SEARCH.libfreenect=\
	bin/libfreenect-glview \
	include/libfreenect/libfreenect.h \
	lib/libfreenect.so
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
