# robotpkg Makefile for:	manipulation/lwr-genom
# Created:			Severin Lemaignan on Tue, 31 Aug 2010
#

DISTNAME=		lwr-genom-1.0
CATEGORIES=		manipulation
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=lwr-genom/}
MASTER_REPOSITORY=	git ssh://trac/git/robots/lwr-genom

MAINTAINER=		xavier.broquere@laas.fr
COMMENT=		Genom module for the KuKa arm
LICENSE=		gnu-lgpl-v3


USE_LANGUAGES+=		c c++

GENOM_MODULE=		lwr

include ../../manipulation/genManip-genom/depend.mk
include ../../wip/kukaFri-libs/depend.mk
include ../../math/gbM/depend.mk
include ../../architecture/genom/depend.mk

include ../../mk/robotpkg.mk
