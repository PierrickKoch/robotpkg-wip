# robotpkg Makefile for:	manipulation/lwr-genom
# Created:			Severin Lemaignan on Tue, 31 Aug 2010
#

DISTNAME=		lwr-genom-1.0
CATEGORIES=		manipulation
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=lwr-genom/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/lwr-genom

MAINTAINER=		xavier.broquere@laas.fr
COMMENT=		Genom module for the KuKa arm
LICENSE=		gnu-lgpl-v3


USE_LANGUAGES+=		c c++

GENOM_MODULE=		lwr

include ../../architecture/genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../architecture/genBasic-genom/depend.mk
include ../../manipulation/genManip-genom/depend.mk
include ../../wip/kukaFri-libs/depend.mk
include ../../motion/softMotion-libs/depend.mk
include ../../wip/pqp-libs/depend.mk
include ../../wip/coldman-libs/depend.mk
include ../../math/gbM/depend.mk
include ../../mk/robotpkg.mk
