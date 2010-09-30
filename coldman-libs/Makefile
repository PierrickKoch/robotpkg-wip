# robotpkg Makefile for:	manipulation/coldman-libs
# Created:			Severin Lemaignan on Tue, 31 Aug 2010
#

DISTNAME=		coldman-libs-1.0
CATEGORIES=		manipulation
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=coldman-libs/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/coldman-libs

MAINTAINER=		xavier.broquere@laas.fr

COMMENT=		COLision Detection for MANipulation
LICENSE=		gnu-lgpl-v3

USE_LANGUAGES+=		c c++

GNU_CONFIGURE=		yes

include ../../wip/sysdep/freeglut.mk
include ../../wip/pqp-libs/depend.mk
include ../../mk/robotpkg.mk
