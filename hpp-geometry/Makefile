# robotpkg Makefile for:	devel/hpp-geometry
# Created:			Antonio El Khoury on Tue, 17 Jan 2012
#

HPP_PACKAGE=	        hpp-geometry
HPP_VERSION=		1.0
MASTER_SITES=		https://github.com/downloads/laas/hpp-geometry/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB_LAAS}${HPP_PACKAGE}

CATEGORIES=		devel
HPP_COMMENT=		New KineoWorks(tm) geometric types
LICENSE=		gnu-lgpl-v3

HPP_BUILD_SYSTEM=	cmake
include ../../meta-pkgs/hpp/Makefile.common

CMAKE_ARGS+=		-DGEOMETRIC_TOOLS_INSTALL_PREFIX:STRING=${PREFIX}

include ../../devel/hpp-util/depend.mk
include ../../math/geometric-tools/depend.mk
include ../../path/kineo-pp/depend.mk
include ../../mk/robotpkg.mk
