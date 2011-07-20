# robotpkg Makefile for:	math/flann
# Created:			Nizar Sallem on Tue, 28 Dec 2010
#

PKGNAME= 			flann-${VERSION}
DISTNAME=			flann-${VERSION}-src
VERSION=			1.6.11
EXTRACT_SUFX= .zip
CATEGORIES=		math
MASTER_SITES=	http://www.cs.ubc.ca/~mariusm/uploads/FLANN/

MAINTAINER=	openrobots@laas.fr
HOMEPAGE=	http://www.cs.ubc.ca/~mariusm/index.php/FLANN/FLANN
COMMENT=	Fast approximate nearest neighbor search library for high dimension
LICENSE=	2-clause-bsd

USE_LANGUAGES+=	c c++
#you need it to disable cmake error since we do in-source build
CMAKE_ARGS+= -DLATEX_OUTPUT_PATH=${WRKSRC}

#option for c bindings generation
PKG_SUPPORTED_OPTIONS+=		c
PKG_SUGGESTED_OPTIONS+=		c
PKG_OPTION_DESCR.c=				Enable c bindings.
define PKG_OPTION_SET.c
  CMAKE_ARGS+=			-DBUILD_C_BINDINGS=ON
endef
define PKG_OPTION_UNSET.c
  CMAKE_ARGS+=			-DBUILD_C_BINDINGS=OFF
endef

#option for python bindings generation
PKG_SUPPORTED_OPTIONS+=		python
PKG_SUGGESTED_OPTIONS-=		python
PKG_OPTION_DESCR.python=	Enable python bindings.
define PKG_OPTION_SET.python
  CMAKE_ARGS+=			-DBUILD_PYTHON_BINDINGS=ON
	include ../../mk/sysdep/python.mk
endef
define PKG_OPTION_UNSET.python
  CMAKE_ARGS+=			-DBUILD_PYTHON_BINDINGS=OFF
endef

#option for matlab bindings generation
PKG_SUPPORTED_OPTIONS+=		matlab
PKG_SUGGESTED_OPTIONS-=		matlab
PKG_OPTION_DESCR.matlab=	Enable matlab bindings.
define PKG_OPTION_SET.matlab
  CMAKE_ARGS+=			-DBUILD_MATLAB_BINDINGS=ON
endef
define PKG_OPTION_UNSET.matlab
  CMAKE_ARGS+=			-DBUILD_MATLAB_BINDINGS=OFF
endef

#option for using mpi 
PKG_SUPPORTED_OPTIONS+=		mpi
PKG_SUGGESTED_OPTIONS-=		mpi
PKG_OPTION_DESCR.mpi=	Enable message parsing interface using.
define PKG_OPTION_SET.mpi
  CMAKE_ARGS+=			-DUSE_MPI=ON
endef
define PKG_OPTION_UNSET.mpi
  CMAKE_ARGS+=			-DUSE_MPI=OFF
endef

include ../../mk/sysdep/latex.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
