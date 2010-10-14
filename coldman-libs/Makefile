# robotpkg Makefile for:	manipulation/coldman-libs
# Created:			Severin Lemaignan on Tue, 31 Aug 2010
#

PKGVERSION=		1.2
DISTNAME=		coldman-libs-${PKGVERSION}
CATEGORIES=		manipulation
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=coldman-libs/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/coldman-libs

MAINTAINER=		xavier.broquere@laas.fr

COMMENT=		COLision Detection for MANipulation
LICENSE=		gnu-lgpl-v3

USE_LANGUAGES+=		c c++

include ../../wip/sysdep/freeglut.mk
include ../../graphics/pqp/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
