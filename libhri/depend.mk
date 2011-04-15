# robotpkg Makefile for:	path/libhri
# Created:			Jim Mainprice on Fri, 15 Apr 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBHRI_DEPEND_MK:=	${LIBHRI_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libhri
endif

ifeq (+,$(LIBHRI_DEPEND_MK)) # ----------------------------------

PREFER.libhri?=	robotpkg

SYSTEM_SEARCH.libhri=\
	include/libhri/hri.h	\
	lib/libhri.so

DEPEND_USE+=		libhri

DEPEND_ABI.libhri?=libhri>=3.10
DEPEND_DIR.libhri?=../../wip/libhri

endif # LIBHRI_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
