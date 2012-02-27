# robotpkg Makefile for:	devel/hpp-geometry
# Created:			Antonio El Khoury on Tue, 17 Jan 2012
#

HPP_PACKAGE=	        hpp-geometry
VERSION=		1.0
CATEGORIES=		devel
MASTER_SITES=		https://github.com/downloads/laas/hpp-geometry/
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB_LAAS}${HPP_PACKAGE}

COMMENT=		New Kineo geometry types
LICENSE=		gnu-lgpl-v3

include ../../meta-pkgs/hpp/Makefile.cmake

CMAKE_ARGS+=		-DGEOMETRIC_TOOLS_INSTALL_PREFIX:STRING=${PREFIX}

include ../../path/kineo-pp/depend.mk
include ../../math/geometric-tools/depend.mk
include ../../mk/robotpkg.mk
