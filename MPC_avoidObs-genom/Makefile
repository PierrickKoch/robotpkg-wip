# robotpkg Makefile for:	path/MPC_avoidObs-genom
# Created:			Arnaud Degroote on Tue, 10 Jan 2012
#

DISTNAME=		MPC_avoidObs-genom-${VERSION}
VERSION=		0.2
PKGREVISION= 	1
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=MPC_avoidObs-genom/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}MPC_avoidObs-genom

MAINTAINER=		openrobots@laas.fr
#HOMEPAGE=
COMMENT=		Encapsulate several (outdoor) navigation algorithms  - GenoM component

GNU_CONFIGURE=		yes

define PKG_OPTION_UNSET.api
  include ../../wip/MPC/depend.mk
  include ../../localization/GPS-genom/depend.mk
endef

GENOM_MODULE=		MPC_avoidObs
include ../../architecture/genom/depend.mk

include ../../interfaces/genPos-genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../mapping/dtm-genom/depend.mk
include ../../wip/MPC_DEMTreatment-genom/depend.mk
include ../../wip/MPC_planner-genom/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
