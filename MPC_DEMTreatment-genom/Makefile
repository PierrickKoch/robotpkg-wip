# robotpkg Makefile for:	mapping/MPC_DEMTreatment-genom
# Created:			Arnaud Degroote on Tue, 10 Jan 2012
#

DISTNAME=		MPC_DEMTreatment-genom-${VERSION}
VERSION=		0.2
CATEGORIES=		mapping
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=MPC_DEMTreatment-genom/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}MPC_DEMTreatment-genom

MAINTAINER=		openrobots@laas.fr
#HOMEPAGE=
COMMENT=		Compute obstacle map -- genom module	

GNU_CONFIGURE=		yes


define PKG_OPTION_UNSET.api
  include ../../wip/MPC/depend.mk
endef

GENOM_MODULE=		MPC_DEMTreatment
include ../../architecture/genom/depend.mk

include ../../interfaces/genPos-genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../mapping/dtm-genom/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
