# robotpkg Makefile for:	wip/eigen3
# Created:			Nizar Sallem on Tue, 26 Apr 2011
#
V=		3.0.0
PKGNAME=	eigen3-${V}
DISTNAME=	${V}
DIST_SUBDIR=	eigen3

CATEGORIES=	wip
MASTER_SITES=	https://bitbucket.org/eigen/eigen/get/
WRKSRC=		${WRKDIR}/eigen

MAINTAINER=	openrobots@laas.fr
HOMEPAGE=	http://eigen.tuxfamily.org/
COMMENT=	a C++ template library for linear algebra
LICENSE=	gnu-lgpl-v3

USE_LANGUAGES=	fortran c c++
WRKSRC=		${WRKDIR}/eigen-eigen-65ee2328342f

CMAKE_ARG_PATH=		..
CONFIGURE_DIRS= 	build

# create the build directory
pre-configure:
	${MKDIR} ${WRKSRC}/build

include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
