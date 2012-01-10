# robotpkg Makefile for:	path/MPC_controller-genom
# Created:			Arnaud Degroote on Tue, 10 Jan 2012
#

DISTNAME=		MPC_controller-genom-${VERSION}
VERSION=		0.2
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=MPC_controller-genom/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}MPC_controller-genom

MAINTAINER=		openrobots@laas.fr
#HOMEPAGE=
COMMENT=		Compute command on the base of a trajectory   - GenoM component

GNU_CONFIGURE=		yes
USE_LANGUAGES+=		c c++ 

define PKG_OPTION_UNSET.api
  include ../../wip/MPC/depend.mk
endef

GENOM_MODULE=		MPC_controller
include ../../architecture/genom/depend.mk

include ../../interfaces/genPos-genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../mapping/dtm-genom/depend.mk
include ../../wip/MPC_avoidObs-genom/depend.mk
include ../../wip/MPC_planner-genom/depend.mk
include ../../mk/robotpkg.mk
