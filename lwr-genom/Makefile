# robotpkg Makefile for:	hardware/lwr-genom
# Created:			Xavier Broquere on Wed, 27 Oct 2010
#

DISTNAME=		lwr-genom-2.5
CATEGORIES=		manipulation
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=lwr-genom/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/lwr-genom

MAINTAINER=		xavier.broquere@laas.fr
COMMENT=		Genom module for the KuKa arm
LICENSE=		gnu-lgpl-v3


GENOM_MODULE=		lwr

#####################
#### LWR OPTIONS ####
#####################

##
## Compile with kukaFri-libs : LWR_FRI
##
PKG_OPTION_DESCR.kukaFri-libs=	Compile LWR-GENOM whith the kukaFri-libs

define PKG_OPTION_SET.kukaFri-libs
  GENOM_ARGS+= -DLWR_FRI
  include ../../wip/kukaFri-libs/depend.mk
endef

PKG_SUPPORTED_OPTIONS+=	kukaFri-libs

#PKG_SUGGESTED_OPTIONS+=	kukaFri-libs

include ../../architecture/genom/depend.mk
include ../../localization/pom-genom/depend.mk
include ../../interfaces/genBasic-genom/depend.mk
include ../../manipulation/genManip-genom/depend.mk
include ../../interfaces/genHum-genom/depend.mk
include ../../motion/softMotion-libs/depend.mk
include ../../graphics/pqp/depend.mk
include ../../graphics/coldman-libs/depend.mk
include ../../math/gbM/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
