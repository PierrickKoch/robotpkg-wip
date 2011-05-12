# robotpkg Makefile for:	wip/rednav-genom
# Created:			Arnaud Degroote on Sat, 19 Mar 2011
#

VERSION=		0.7
DISTNAME=		rednav-genom-${VERSION}
CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=rednav-genom/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/rednav-genom

MAINTAINER=		openrobots@laas.fr
COMMENT=		Global path planning - GenoM component

GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++

define PKG_OPTION_UNSET.api
  include ../../wip/jafar-rednav/depend.mk
endef

GENOM_MODULE=		rednav
include ../../architecture/genom/depend.mk

include ../../interfaces/genPos-genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../mapping/regionMap-genom/depend.mk
include ../../mk/robotpkg.mk
