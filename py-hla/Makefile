# robotpkg Makefile for:	architecture/py27-hla
# Created:			Arnaud Degroote on Tue, 12 Mar 2013
#

PKG_VERSION=	1.1.1
DISTNAME= 		PyHLA-${PKG_VERSION}-Source
PKGNAME= 		${PKGTAG.python}-hla-${PKG_VERSION}
CATEGORIES=		architecture
MASTER_SITES=	http://gnu.mirrors.pair.com/savannah/savannah//certi/contrib/PyHLA/

MAINTAINER=		arnaud.degroote@isae-supaero.fr
HOMEPAGE=	https://savannah.nongnu.org/projects/certi
COMMENT=	An Open Source HLA RTI (High Level Architecture) python API
LICENSE=	gnu-gpl-v2

CMAKE_ARGS+=   -DPYTHON_EXECUTABLE=${PYTHON}
CMAKE_ARGS+=   -DPYTHON_INCLUDE_PATH=${PYTHON_INCLUDE}
CMAKE_ARGS+=   -DPYTHON_INCLUDE_DIR=${PYTHON_INCLUDE}
CMAKE_ARGS+=   -DPYTHON_LIBRARY=${PYTHON_LIB}
CMAKE_ARGS+=   -DCMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT=ON
CMAKE_ARGS+=   -DPYTHON_PACKAGES_PATH=${PREFIX}/${PYTHON_SITELIB}

include ../../wip/certi/depend.mk

include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
