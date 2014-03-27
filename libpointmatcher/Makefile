# robotpkg depend.mk for:	mapping/libpointmatcher
# Created:			Pierrick Koch on Thu, 27 Mar 2014
#
NAME=			libpointmatcher
VERSION=		1.1.0
GITHUB_USER=		ethz-asl
CATEGORIES=		mapping

DISTNAME=		${NAME}-${VERSION}
DISTBASE=		${GITHUB_USER}/${NAME}/archive/
MASTER_SITES=		${MASTER_SITE_GITHUB:=${DISTBASE}${VERSION}${EXTRACT_SUFX}?f=}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${GITHUB_USER}/${NAME}.git

MAINTAINER=		pierrick.koch@laas.fr
COMMENT=		An "Iterative Closest Point" library for 2-D/3-D mapping in robotic
LICENSE=		2-clause-bsd

CMAKE_ARGS+=		-DSHARED_LIBS=ON

include ../../wip/libnabo/depend.mk
include ../../math/eigen3/depend.mk
include ../../devel/yaml-cpp/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/googletest.mk
