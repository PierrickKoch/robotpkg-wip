# robotpkg Makefile for:	planning/hatpconsole
# Created:			Raphaël Lallement, 22/01/2013
#

DISTNAME=		hatpconsole-${VERSION}
VERSION=		2.0.0
PKGREVISION=		
CATEGORIES=		planning
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=hatpconsole/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}hatp/hatpconsole.git


MAINTAINER=		raphael.lallement@laas.fr
COMMENT=		GUI to display HATP plans
LICENSE=		2-clause-bsd

MAKE_JOBS_SAFE=		yes

USE_QMAKE=		no
CMAKE_ARGS+=		-DlibhatpROOT=${PREFIX.libhatp}
CMAKE_ARGS+=		-DmsgconnectorROOT=${PREFIX.msgconnector}
CMAKE_ARGS+=		-DQT_QMAKE_EXECUTABLE=${QMAKE}

DEPEND_ABI.boost-libs=boost-libs>=1.34
DEPEND_ABI.boost-headers=boost-headers>=1.34

include ../../wip/msgconnector/depend.mk
include ../../wip/libhatp/depend.mk
include ../../wip/mk/sysdep/libgraphviz.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/qmake.mk
include ../../mk/sysdep/qt4-libs.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
