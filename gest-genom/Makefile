# robotpkg Makefile for:	hri/gest-genom
# Created:			Severin Lemaignan on Tue, 31 Aug 2010
#

DISTNAME=		gest-genom-1.0
PKGREVISION=		1
CATEGORIES=		image
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=gest-genom/}
MASTER_REPOSITORY=	git ssh://softs.laas.fr/git/robots/gest-genom

MAINTAINER=		openrobots@laas.fr
COMMENT=		GeNoM module for human posture recognition, based on skin patches detection

# LICENSE is currently wrong: some parts mention "APP". Must clarify this.
LICENSE=		isc


USE_LANGUAGES+=		c c++

GENOM_MODULE=		gest

# Lots of missing dependencies : at least latex.
include ../../localization/pom-genom/depend.mk
include ../../image/viam-libs/depend.mk
include ../../image/opencv/depend.mk
include ../../architecture/genom/depend.mk

include ../../mk/robotpkg.mk
