# robotpkg depend.mk for:	math/orocos-bfl
# Created:			Charles Lesire on Mon, 6 Jan 2014
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBHTN_DEPEND_MK:=${LIBHTN_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		orocos-bfl
endif

ifeq (+,$(LIBHTN_DEPEND_MK))
PREFER.orocos-bfl?=	robotpkg

DEPEND_USE+=		orocos-bfl

DEPEND_ABI.orocos-bfl?=	orocos-bfl>=0.8
DEPEND_DIR.orocos-bfl?=	../../onera/orocos-bfl

SYSTEM_SEARCH.orocos-bfl= \
	include/bfl/bfl_constants.h \
	lib/liborocos-bfl.so \
	lib/pkgconfig/orocos-bfl.pc
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
