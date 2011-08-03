# robotpkg Makefile for:	math/flann
# Created:			Nizar Sallem on Tue, 28 Dec 2010
#

VERSION=			1.6.11
PKGNAME= 			${PKGTAG.python-}-flann-${VERSION}
DISTNAME=			flann-${VERSION}-src
EXTRACT_SUFX= .zip
CATEGORIES=		math
MASTER_SITES=	http://www.cs.ubc.ca/~mariusm/uploads/FLANN/

MAINTAINER=	openrobots@laas.fr
HOMEPAGE=	http://www.cs.ubc.ca/~mariusm/index.php/FLANN/FLANN
COMMENT=	Python bindings for flann
LICENSE=	2-clause-bsd

USE_LANGUAGES+=	c c++

#option for c bindings generation
CMAKE_ARGS+=			-DBUILD_C_BINDINGS=OFF
CMAKE_ARGS+=			-DBUILD_MATLAB_BINDINGS=OFF
CMAKE_ARGS+= 			-DPYTHON_SITELIB=${PYTHON_SITELIB}

include ../../mk/sysdep/python.mk
include ../../wip/flann/depend.mk
include ../../mk/sysdep/latex.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
