# robotpkg Makefile for:	path/libmove3d-hri
# Created:			Jim Mainprice on Fri, 15 Apr 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBMOVE3D_HRI_DEPEND_MK:=	${LIBMOVE3D_HRI_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libmove3d-hri
endif

ifeq (+,$(LIBMOVE3D_HRI_DEPEND_MK)) # ----------------------------------

PREFER.libmove3d-hri?=	robotpkg

SYSTEM_SEARCH.libmove3d-hri=\
	include/libmove3d/hri/hri.h	\
	lib/libmove3d-hri.so \
	lib/pkgconfig/libmove3d-hri.pc

DEPEND_USE+=		libmove3d-hri

DEPEND_ABI.libmove3d-hri?=libmove3d-hri>=2.21
DEPEND_DIR.libmove3d-hri?=../../wip/libmove3d-hri

endif # LIBMOVE3D_HRI_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
