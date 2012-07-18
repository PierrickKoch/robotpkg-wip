# robotpkg Makefile for:	math/flann
# Created:			Nizar Sallem on Tue, 28 Dec 2010
#

VERSION=	1.7.1
DISTNAME=	flann-${VERSION}-src
PKGNAME=	flann-${VERSION}
MASTER_SITES=	http://www.cs.ubc.ca/~mariusm/uploads/FLANN/
EXTRACT_SUFX=	.zip

CATEGORIES=	math
COMMENT=	Fast approximate nearest neighbor search for high dimension
MAINTAINER=	openrobots@laas.fr
HOMEPAGE=	http://www.cs.ubc.ca/~mariusm/index.php/FLANN/FLANN
LICENSE=	2-clause-bsd

USE_LANGUAGES+=	c c++

CMAKE_ARGS+=	-DBUILD_MATLAB_BINDINGS=OFF
CMAKE_ARGS+=	-DBUILD_PYTHON_BINDINGS=OFF
CMAKE_ARGS+=	-DUSE_MPI=OFF
CMAKE_ARGS+=	-DBUILD_CUDA_LIB=OFF
CMAKE_ARGS+=	-DBUILD_C_BINDINGS=ON

CMAKE_ARGS+=	-DLATEX_COMPILER=${PREFIX.latex}/bin/latex

# because of in-source build
CMAKE_ARGS+=	-DLATEX_OUTPUT_PATH=${WRKSRC}

# because -O triggers a g++-4.1.3 internal bug
_CFLAGS_NDEBUG=$(if $(filter gcc-c++-4.1.%,${PKGVERSION.gcc-c++}),-O0,-O3)
_CFLAGS_NDEBUG+= -DNDEBUG

include ../../mk/sysdep/latex.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
