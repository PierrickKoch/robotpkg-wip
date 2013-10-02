# robotpkg depend.mk for:	mapping/clara
# Created:			Pierrick Koch on Fri, 13 Sep 2013
#
NAME=			clara
DISTNAME=		${NAME}-${VERSION}
VERSION=		0.2.1
CATEGORIES=		mapping
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}${NAME}

MAINTAINER=		pierrick.koch@laas.fr
COMMENT=		The Common LAAS RAster library
LICENSE=		2-clause-bsd

CMAKE_ARGS+=		-DGDAL_CONFIG=${PREFIX.gdal}/bin/gdal-config
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

DEPEND_ABI.g++ =	g++>=4.6
DEPEND_ABI.clang =	clang>=3.0

# outside world libs/tools
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/gdal.mk
# LAAS libs
include ../../graphics/gdhe/depend.mk
include ../../image/libimages3d/depend.mk
include ../../math/t3d/depend.mk
include ../../mapping/libdtm/depend.mk
include ../../mapping/regionMap-lib/depend.mk
# gdalwrap (GDAL wrapper)
include ../../wip/gdalwrap/depend.mk
# standard
include ../../pkgtools/pkg-config/depend.mk
# language
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
# robotpkg
include ../../mk/robotpkg.mk
