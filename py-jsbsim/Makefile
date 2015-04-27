# robotpkg Makefile for:	simulation/jsbsim
# Created:			Arnaud Degroote on Mon, 27 Apr 2015
#

DISTNAME= 		jsbsim-${VERSION}
PKGNAME=		${PKGTAG.python}-jsbsim-${VERSION}
VERSION=		20150424
CATEGORIES=		simulation

FETCH_METHOD= 		cvs
MASTER_SITES=		:pserver:jsbsim.cvs.sourceforge.net:/cvsroot/jsbsim@:${VERSION}+JSBSim

MAINTAINER=			arnaud.degroote@isae-supaero.fr
COMMENT=			Open source flight dynamics model, python binding
LICENSE=			gnu-lgpl-v2

WRKSRC= 			${WRKDIR}/${DISTNAME}/tests

CMAKE_ARGS+= 	-DJSBSIM_INCLUDE_DIR=${PREFIX.jsbsim}/include/JSBSim
CMAKE_ARGS+= 	-DJSBSIM_LIBRARY=${PREFIX.jsbsim}/lib/libJSBSim.so
CMAKE_ARGS+=    -DPYTHON_INSTDIR=${PREFIX}/${PYTHON_SITELIB}
CMAKE_ARGS+= 	-DPYTHON_EXECUTABLE=${PYTHON}
CMAKE_ARGS+=    -DPYTHON_INCLUDE_PATH=${PYTHON_INCLUDE}
CMAKE_ARGS+=    -DPYTHON_LIBRARY=${PYTHON_LIB}

# CMAKE_ARGS+=  -DCYTHON_EXECUTABLE=${CYTHON}


post-extract:
	${CP} ${FILESDIR}/CMakeLists.txt ${WRKSRC}


# CYTHON stuff
include ../../wip/jsbsim/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
