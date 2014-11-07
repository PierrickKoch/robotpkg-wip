# robotpkg depend.mk for:	wip/llsam
# Created:			Ellon Paiva Mendes on Fri, 7 Nov 2014
#
NAME=			llsam
VERSION=		0.1.0
DISTNAME=		${NAME}-${VERSION}
CATEGORIES=		wip
MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=${NAME}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS_TRAC}${NAME}

MAINTAINER=		ellon.mendes@laas.fr
COMMENT=		Library for localization using EKF and graph-map smoothing
LICENSE=		2-clause-bsd

CMAKE_ARG_PATH=		..
CONFIGURE_DIRS=		_build

USE_QMAKE=              no

CMAKE_ARGS+=            -DCMAKE_BUILD_TYPE=Release 

DEPEND_ABI.jafar-rtslam=	jafar-rtslam>=0.3
include ../../wip/jafar-rtslam/depend.mk

DEPEND_ABI.boost-libs=	boost-libs>=1.43
DEPEND_ABI.boost-headers= boost-headers>=1.43
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk

DEPEND_ABI.cmake= cmake>=2.8
include ../../mk/sysdep/cmake.mk 

# standard
include ../../pkgtools/pkg-config/depend.mk
# language
	
include ../../mk/language/c.mk 
include ../../mk/language/c++.mk 
# robotpkg
include ../../mk/robotpkg.mk

pre-configure:
	${RUN}${MKDIR} ${WRKSRC}/_build