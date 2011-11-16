# robotpkg Makefile for:	manipulation/attentional-genom
# Created:			Xavier Broquere on 03 March 2011
#

DISTNAME=		attentional-genom-1.2
CATEGORIES=		manipulation
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=attentional-genom/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}attentional-genom

MAINTAINER=		xavier.broquere@laas.fr
COMMENT=		Genom module to control the motion law of the robot
LICENSE=		gnu-lgpl-v3

USE_LANGUAGES+=		c c++

GENOM_MODULE=		attentional


include ../../architecture/genom/depend.mk
include ../../interfaces/genBasic-genom/depend.mk
include ../../manipulation/genManip-genom/depend.mk
include ../../interfaces/genHum-genom/depend.mk
include ../../math/gbM/depend.mk
include ../../mk/robotpkg.mk
