
DISTNAME=		rtslam-genom-${VERSION}
VERSION=		0.1
CATEGORIES=		localization
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=rtslam-genom/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}rtslam-genom

MAINTAINER=		openrobots@laas.fr
#HOMEPAGE=
COMMENT=		Realtime slam - genom module

GNU_CONFIGURE=		yes

define PKG_OPTION_UNSET.api
  include ../../wip/jafar-rtslam/depend.mk
endef

GENOM_MODULE=		rtslam
include ../../architecture/genom/depend.mk

include ../../interfaces/genBasic-genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
