## robotpkg depend.mk for:	path/libmove3d
# Created:			Severin Lemaignan on Fri, 11 Feb 2011
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
LIBMOVE3D_DEPEND_MK:=	${LIBMOVE3D_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		libmove3d
endif

ifeq (+,$(LIBMOVE3D_DEPEND_MK)) # ----------------------------------

PREFER.libmove3d?=	robotpkg

SYSTEM_SEARCH.libmove3d=\
	include/libmove3d/include/move3d-headless.h	\
	lib/libmove3d.so

DEPEND_USE+=		libmove3d

DEPEND_ABI.libmove3d?=libmove3d>=3.12.0
DEPEND_DIR.libmove3d?=../../wip/libmove3d

endif # LIBMOVE3D_DEPEND_MK ----------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
