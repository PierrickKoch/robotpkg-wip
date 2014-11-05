# robotpkg Makefile for:        wip/gtsam
# Created:                      Ellon Paiva Mendes <emendes@laas.fr>, 5 Nov. 2014
#

DISTNAME=               gtsam-3.1.0
EXTRACT_SUFX=           .tgz
VERSION=                3.1.0
CATEGORIES=             wip
MASTER_SITES=           https://research.cc.gatech.edu/borg/sites/edu.borg/files/downloads/

MAINTAINER=             gtsam@lists.gatech.edu
COMMENT=                "Library that implement smoothing and mapping (SAM) in robotics and vision using factor graphs and Bayes networks"
LICENSE=                modified-bsd

MAKE_JOBS_SAFE=         yes
CMAKE_ARG_PATH=		..
CONFIGURE_DIRS=		_build

USE_QMAKE=              no

CMAKE_ARGS+=            -DCMAKE_BUILD_TYPE=Release 

DEPEND_ABI.boost-libs=	boost-libs>=1.43
DEPEND_ABI.boost-headers= boost-headers>=1.43
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk

DEPEND_ABI.cmake= cmake>=2.6
include ../../mk/sysdep/cmake.mk 

include ../../mk/language/c.mk 
include ../../mk/language/c++.mk 
include ../../mk/robotpkg.mk

pre-configure:
	${RUN}${MKDIR} ${WRKSRC}/_build