# robotpkg Makefile for:	math/metapod
# Created:			Antonio El Khoury on Wed, 29 Feb 2012
#

PACKAGE=                metapod
VERSION=	        1.0.0
DISTNAME=	        ${PACKAGE}-${VERSION}
PKGNAME=	        ${PACKAGE}-${VERSION}
PKGREVISION=

CATEGORIES=		math
MASTER_SITES=		${MASTER_SITE_GITHUB_GEPETTO:=${PACKAGE}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB_LAAS}${PACKAGE}

COMMENT=		Template-based rigid body dynamics library.

LICENSE=		gnu-gpl-v3
MAINTAINER=		gepetto@laas.fr

USE_LANGUAGES+=		c c++
DOXYGEN_PLIST_DIR+=	share/doc/${PACAKGE}

CMAKE_ARGS+=            -DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=            -DBOOST_LIBRARYDIR=${PREFIX.boost-libs}/lib
CMAKE_ARGS+=            -ggdb3 -O3 -funroll-loops -march=native -mfpmath=sse

include ../../math/eigen3/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/robotpkg.mk
