# robotpkg Makefile for:	math/flann
# Created:			Nizar Sallem on Tue, 28 Dec 2010
#

VERSION=	1.7.1
DISTNAME=	flann-${VERSION}-src
PKGNAME= 		${PKGTAG.python}-flann-${VERSION}
MASTER_SITES=	http://www.cs.ubc.ca/~mariusm/uploads/FLANN/
EXTRACT_SUFX=	.zip

CATEGORIES=	graphics
COMMENT=	Fast approximate nearest neighbor search for high dimension
MAINTAINER=	openrobots@laas.fr
HOMEPAGE=	http://www.cs.ubc.ca/~mariusm/index.php/FLANN/FLANN
LICENSE=	2-clause-bsd

CMAKE_ARGS+=	-DBUILD_MATLAB_BINDINGS=OFF
CMAKE_ARGS+=	-DBUILD_PYTHON_BINDINGS=ON
CMAKE_ARGS+=	-DUSE_MPI=OFF
CMAKE_ARGS+=	-DBUILD_CUDA_LIB=OFF
CMAKE_ARGS+=	-DBUILD_C_BINDINGS=OFF
CMAKE_ARGS+= 	-DPYTHON_SITELIB=${PYTHON_SITELIB}

include ../../graphics/flann/depend.mk

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
