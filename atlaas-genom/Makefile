# robotpkg depend.mk for:	mapping/atlaas-genom
# Created:			Pierrick Koch on Fri, 13 Sep 2013
#
NAME=			atlaas-genom
DISTNAME=		${NAME}-${VERSION}
VERSION=		0.1.1
CATEGORIES=		mapping
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}${NAME}

MAINTAINER=		pierrick.koch@laas.fr
COMMENT=		Multi-mapping (libdtm2)
LICENSE=		2-clause-bsd

DEPEND_ABI.g++ =	g++>=4.6
DEPEND_ABI.clang =	clang>=3.0

GENOM_MODULE=		atlaas

# Genom
include ../../architecture/genom/depend.mk
include ../../interfaces/genBasic-genom/depend.mk
include ../../interfaces/genPos-genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../hardware/velodyne-genom/depend.mk
# Atlaas lib
include ../../wip/atlaas/depend.mk
# LAAS libs
include ../../image/libimages3d/depend.mk
include ../../math/t3d/depend.mk
# gdalwrap (GDAL wrapper)
include ../../wip/gdalwrap/depend.mk
# language
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
# robotpkg
include ../../mk/robotpkg.mk
