# robotpkg depend.mk for:	mapping/gladys
# Created:			Pierrick Koch on Mon, 19 Aug 2013
#
NAME=			gladys
DISTNAME=		${NAME}-${VERSION}
VERSION=		0.1.7
CATEGORIES=		mapping
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}${NAME}

MAINTAINER=		pierrick.koch@laas.fr
COMMENT=		The Graph Library for Autonomous and DYnamic Systems
LICENSE=		2-clause-bsd

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include
CMAKE_ARGS+=		-DGDAL_CONFIG=${PREFIX.gdal}/bin/gdal-config
CMAKE_ARGS+=		-DPYTHON_SITE_PACKAGES=${PREFIX}/${PYTHON_SITELIB}
CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

DEPEND_ABI.boost-libs=boost-libs>=1.46.1
DEPEND_ABI.boost-headers=boost-headers>=1.46.1
DEPEND_ABI.g++ =	g++>=4.6
DEPEND_ABI.clang =	clang>=3.0

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/gdal.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
