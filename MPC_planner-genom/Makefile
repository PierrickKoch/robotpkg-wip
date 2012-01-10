# robotpkg Makefile for:	path/MPC_planner-genom
# Created:			Arnaud Degroote on Tue, 10 Jan 2012
#

DISTNAME=		MPC_planner-genom-${VERSION}
VERSION=		0.2
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=MPC_planner-genom/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}MPC_planner-genom

MAINTAINER=		openrobots@laas.fr
#HOMEPAGE=
COMMENT=		Load, save and manipulate trajectories -- genom module	

GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++

define PKG_OPTION_UNSET.api
  include ../../wip/MPC/depend.mk
  include ../../mapping/dtm-genom/depend.mk
endef

GENOM_MODULE=		MPC_planner
include ../../architecture/genom/depend.mk

include ../../interfaces/genPos-genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../mk/robotpkg.mk
