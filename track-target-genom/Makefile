# robotpkg Makefile for:	action/track-target-genom
# Created:			Arnaud Degroote on Wed, 16 Nov 2011
#

PKGNAME=		track-target-genom-${VERSION}
DISTNAME=		track_target-genom-${VERSION}
VERSION= 		0.2
CATEGORIES=		action
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=action/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/action/track_target
PKGREVISION= 	1

MAINTAINER=		action@laas.fr
DESCR=			GenoM component that helps to track a moving target
LICENSE=		2-clause-bsd

GENOM_MODULE=		track_target
NOT_FOR_PLATFORM=

include ../../architecture/genom/depend.mk
include ../../interfaces/genBasic-genom/depend.mk
include ../../interfaces/genPos-genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../hardware/platine-genom/depend.mk

include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
