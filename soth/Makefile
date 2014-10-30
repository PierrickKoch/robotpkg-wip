# robotpkg Makefile for:	wip/soth
# Created:			Aurelie Clodic on Thu, 30 Oct 2014
#

PKGNAME=		soth-${VERSION}
DISTNAME=		soth-${VERSION}
VERSION=		2.0.0
#PKGREVISION=		

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=soth/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/soth

MAINTAINER=	hpp@laas.fr
CATEGORIES=	wip
COMMENT=	SOT Hierarchical solver
LICENSE=	gnu-lgpl-v3

DYNAMIC_PLIST_DIRS+=	share/doc/soth

#CMAKE_ARGS+=		-DPYTHON_EXECUTABLE=${PYTHON}
#CMAKE_ARGS+=		-DPYTHON_INCLUDE_DIR=${PYTHON_INCLUDE}
#CMAKE_ARGS+=		-DPYTHON_LIBRARY=${PYTHON_LIB}
#CMAKE_ARGS+=		-DPYTHON_SITELIB=${PYTHON_SITELIB}
#CMAKE_ARGS+=		-DCMAKE_INSTALL_LIBDIR=lib

# Build the package in a separate directory
#CONFIGURE_DIRS=		_build
#CMAKE_ARG_PATH=		..

include ../../math/eigen3/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
