# robotpkg depend.mk for:	mapping/libnabo
# Created:			Pierrick Koch on Thu, 27 Mar 2014
#
NAME=			libnabo
VERSION=		1.0.4
GITHUB_USER=		ethz-asl
CATEGORIES=		mapping

DISTNAME=		${NAME}-${VERSION}
DISTBASE=		${GITHUB_USER}/${NAME}/archive/
MASTER_SITES=		${MASTER_SITE_GITHUB:=${DISTBASE}${VERSION}${EXTRACT_SUFX}?f=}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${GITHUB_USER}/${NAME}.git

MAINTAINER=		pierrick.koch@laas.fr
COMMENT=		A fast K Nearset Neighbor library for low-dimensional spaces
LICENSE=		2-clause-bsd

CMAKE_ARGS+=		-DSHARED_LIBS=ON
CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

include ../../graphics/flann/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
include ../../mk/sysdep/doxygen.mk
