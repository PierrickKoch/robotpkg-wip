# robotpkg depend.mk for:	mapping/pcl
# Created:			Pierrick Koch on Mon, 08 Sep 2014
#
NAME=			pcl
VERSION=		pcl-1.7.1
CATEGORIES=		mapping
GITHUB_USER=		PointCloudLibrary

DISTNAME=		${NAME}-${VERSION}
DISTBASE=		${GITHUB_USER}/${NAME}/archive/
MASTER_SITES=		${MASTER_SITE_GITHUB:=${DISTBASE}${VERSION}${EXTRACT_SUFX}?f=}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${GITHUB_USER}/${NAME}.git
# https://github.com/PointCloudLibrary/pcl/archive/pcl-1.7.1.tar.gz

MAINTAINER=		pierrick.koch@laas.fr
COMMENT=		Point Cloud Library (PCL)
LICENSE=		2-clause-bsd

include ../../math/eigen3/depend.mk
include ../../graphics/flann/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/robotpkg.mk
