# robotpkg depend.mk for:	mapping/gdalwrap
# Created:			Pierrick Koch on Mon, 19 Aug 2013
#
NAME=			gdalwrap
DISTNAME=		${NAME}-${VERSION}
VERSION=		0.1.3
CATEGORIES=		mapping
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}${NAME}

MAINTAINER=		pierrick.koch@laas.fr
COMMENT=		C++11 GDAL wrapper
LICENSE=		2-clause-bsd

CMAKE_ARGS+=		-DGDAL_CONFIG=${PREFIX.gdal}/bin/gdal-config
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

DEPEND_ABI.g++ =	g++>=4.6
DEPEND_ABI.clang =	clang>=3.0

include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/gdal.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
