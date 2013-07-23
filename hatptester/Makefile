# robotpkg Makefile for:	planning/hatptester
# Created:			Raphaël Lallement, 08/03/2013
#

DISTNAME=		hatptester-${VERSION}
VERSION=		1.1.0
PKGREVISION=		
CATEGORIES=		planning
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=hatptester/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}hatptester


MAINTAINER=		raphael.lallement@laas.fr
COMMENT=		GUI to send plan requests to HATP
LICENSE=		2-clause-bsd

MAKE_JOBS_SAFE=		yes

USE_QMAKE=		no
CMAKE_ARGS+=		-DmsgconnectorROOT=${PREFIX.msgconnector}
CMAKE_ARGS+=		-Dboost-logROOT=${PREFIX.boost-log}
CMAKE_ARGS+=		-DQT_QMAKE_EXECUTABLE=${QMAKE}

DEPEND_ABI.boost-libs=boost-libs>=1.34
DEPEND_ABI.boost-headers=boost-headers>=1.34

include ../../wip/msgconnector/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../devel/boost-log/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/qmake.mk
include ../../mk/sysdep/qt4-libs.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
