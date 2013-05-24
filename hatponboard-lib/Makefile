# robotpkg Makefile for:	planning/hatponboard-lib
# Created:			Raphaël Lallement, 22/05/2013
#

DISTNAME=		hatponboard-lib-${VERSION}
VERSION=		1.0.0
PKGREVISION=		
CATEGORIES=		planning
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=hatponboard-lib/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}hatponboard-lib


MAINTAINER=		raphael.lallement@laas.fr
COMMENT=		Libraries and parser needed by HATPOnboard
LICENSE=		2-clause-bsd

MAKE_JOBS_SAFE=		yes

CMAKE_ARGS+=		-DmsgconnectorROOT=${PREFIX.msgconnector}

DEPEND_ABI.boost-libs=boost-libs>=1.34
DEPEND_ABI.boost-headers=boost-headers>=1.34

include ../../wip/msgconnector/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk