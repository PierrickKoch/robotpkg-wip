# robotpkg depend.mk for:	mapping/gdalwrap
# Created:			Pierrick Koch on Mon, 19 Aug 2013
#

DEPEND_DEPTH:=		${DEPEND_DEPTH}+
gdalwrap_DEPEND_MK:=${gdalwrap_DEPEND_MK}+

ifeq (+,$(DEPEND_DEPTH))
DEPEND_PKG+=		gdalwrap
endif

ifeq (+,$(gdalwrap_DEPEND_MK))
PREFER.gdalwrap?=	robotpkg

DEPEND_USE+=		gdalwrap

DEPEND_ABI.gdalwrap?=	gdalwrap>=0.1
DEPEND_DIR.gdalwrap?=	../../wip/gdalwrap

SYSTEM_SEARCH.gdalwrap= \
	include/gdalwrap/gdal.hpp \
	lib/libgdalwrap.so \
	'lib/pkgconfig/gdalwrap.pc:/Version/s/[^0-9.]//gp'
endif

DEPEND_DEPTH:=		${DEPEND_DEPTH:+=}
