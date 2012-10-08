DISTNAME=		trajectory_monitor-genom-${VERSION}
VERSION=		0.1
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=trajectory_monitor-genom/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}trajectory_monitor-genom

MAINTAINER=		arnaud.degroote@laas.fr
COMMENT=		Simple trajectory recorder + replayer

GNU_CONFIGURE=		yes
USE_LANGUAGES+=		c c++ 

define PKG_OPTION_UNSET.api
  include ../../localization/pom-genom/depend.mk
endef

GENOM_MODULE=		trajectory_monitor
include ../../architecture/genom/depend.mk

include ../../interfaces/genPos-genom/depend.mk
include ../../interfaces/genBasic-genom/depend.mk
include ../../mk/robotpkg.mk
