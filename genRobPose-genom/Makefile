# robotpkg Makefile for:	wip/genRobPose-genom
# Created:			Mokhtar Gharbi on Tue, 18 Jan 2010
#

DISTNAME=		genRobPose-genom-1.0

CATEGORIES=		architecture
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=genRobPose-genom/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/genRobPose-genom

MAINTAINER=		openrobots@laas.fr
#HOMEPAGE=
COMMENT=		Common robot pose data structures for GenoM

LICENSE=		gnu-lgpl-v3

#GNU_CONFIGURE=		yes

GENOM_MODULE=		genRobPose
GENOM_ARGS=		-a

####PKG_SUPPORTED_OPTIONS:=$(filter-out api,${PKG_SUPPORTED_OPTIONS})

include ../../architecture/genBasic-genom/depend.mk
include ../../architecture/genom/depend.mk
include ../../mk/robotpkg.mk
