# robotpkg Makefile for:	math/metapod
# Created:			Antonio El Khoury on Wed, 29 Feb 2012
#

PKGBASE=                metapod
VERSION=	        1.0.1
DISTNAME=	        ${PKGBASE}-${VERSION}
PKGNAME=	        ${PKGBASE}-${VERSION}
PKGREVISION=

CATEGORIES=		math
MASTER_SITES=		${MASTER_SITE_GITHUB:=downloads/laas/${PKGBASE}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/laas/${PKGBASE}

COMMENT=		Template-based rigid body dynamics library.

LICENSE=		gnu-gpl-v3
MAINTAINER=		gepetto@laas.fr

DOXYGEN_PLIST_DIR+=	share/doc/${PKGBASE}

CMAKE_ARGS+=            -DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=            -DBOOST_LIBRARYDIR=${PREFIX.boost-libs}/lib

include ../../math/eigen3/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
