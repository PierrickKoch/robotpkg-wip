# robotpkg depend.mk for:	path/hpp-geometry
# Created:			Antonio El Khoury on Tue, 17 Jan 2012
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
HPP_GEOMETRY_DEPEND_MK:=	${HPP_GEOMETRY_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		hpp-geometry
endif

ifeq (+,$(HPP_GEOMETRY_DEPEND_MK)) # --------------------------------------

PREFER.hpp-geometry?=	robotpkg

SYSTEM_SEARCH.hpp-geometry=\
	include/hpp/geometry/collision/capsule.hh	\
	lib/libhpp-geometry.so

DEPEND_USE+=		hpp-geometry

DEPEND_ABI.hpp-geometry?=	hpp-geometry>=1.0
DEPEND_DIR.hpp-geometry?=	../../devel/hpp-geometry

endif # HPP_GEOMETRY_DEPEND_MK --------------------------------------------

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
