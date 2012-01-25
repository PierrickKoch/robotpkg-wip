# robotpkg Makefile for:	math/sensFusion-libs
# Created:			Xavier Broquere on Wed, 25 Jan 2012
#

DISTNAME=		sensFusion-libs-${PKGVERSION_NOREV}
PKGVERSION=		1.0

CATEGORIES=		math
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sensFusion-libs/}
MASTER_REPOSITORY=      git ssh://git.openrobots.org/git/robots/sensFusion-libs

MAINTAINER=		whe@laas.fr
LICENSE=		isc

COMMENT=		Sensor Fusion Library

USE_LANGUAGES+=		c c++

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
