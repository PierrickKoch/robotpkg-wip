# robotpkg Makefile for:	manipulation/coldman-genom
# Created:			Severin Lemaignan on Tue, 31 Aug 2010
#

DISTNAME=		coldman-genom-1.0
CATEGORIES=		manipulation
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=coldman-genom/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/coldman-genom

MAINTAINER=		xavier.broquere@laas.fr

COMMENT=		COLision Detection for MANipulation module based on coldman-libs
LICENSE=		gnu-lgpl-v3


USE_LANGUAGES+=		c c++

GENOM_MODULE=		coldman

include ../../architecture/genom/depend.mk
include ../../wip/coldman-libs/depend.mk
include ../../manipulation/genManip-genom/depend.mk

include ../../mk/robotpkg.mk
