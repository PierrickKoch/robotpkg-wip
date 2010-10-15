# Created:			Severin Lemaignan on Fri, 24 Sep 2010
#

DISTNAME=		spark-genom-1.1
CATEGORIES=		knowledge
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=spark-genom/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/spark-genom

MAINTAINER=		easisbot@laas.fr
COMMENT=		Spatial Reasoning and Knowledge module

#spark-genom is currently GPL because it depends on BioMove3D that depends itself 
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2


USE_LANGUAGES+=		c c++

#######################
#### SPARK OPTIONS ####
#######################

PKG_OPTIONS_GROUPS=	robot
PKG_OPTIONS_SET.robot=	hrp2 pr2 jido simulation

##
## HRP2
##
PKG_OPTION_DESCR.hrp2=	Compile SPARK with support for HRP2

define PKG_OPTION_SET.hrp2
  GENOM_ARGS+= -DHRP2
  include ../../localization/pom-genom/depend.mk
  include ../../image/viman-genom/depend.mk
endef

##
## PR2
##
PKG_OPTION_DESCR.pr2=	Compile SPARK with support for PR2

define PKG_OPTION_SET.pr2
  GENOM_ARGS+= -DPR2
endef

##
## Jido
##
PKG_OPTION_DESCR.jido=	Compile SPARK with support for Jido

define PKG_OPTION_SET.jido
  GENOM_ARGS+= -DJIDO
  include ../../localization/pom-genom/depend.mk
  include ../../math/gbM/depend.mk
  include ../../wip/lwr-genom/depend.mk
  include ../../image/viman-genom/depend.mk
  include ../../localization/mocap-genom/depend.mk
  include ../../wip/gest-genom/depend.mk
endef

##
## Simulation
##
PKG_OPTION_DESCR.simulation=	Compile SPARK for simulation only
PKG_OPTION_SET.simulation:=	GENOM_ARGS+= -DSIMULATION

##
## Ontology server
##
PKG_SUPPORTED_OPTIONS+=	oro
PKG_SUGGESTED_OPTIONS+=	oro
PKG_OPTION_DESCR.oro=	Enable the support of ORO ontology server

define PKG_OPTION_SET.oro
  GENOM_ARGS+= -DORO
  include ../../knowledge/liboro/depend.mk
endef

#####################

GENOM_MODULE=		spark

## BioMove3D dependency
## Build BioMove3D with the "Jido" profile to get all required options for
# HRI with BioMove3D
REQD_BUILD_OPTIONS.BioMove3D:=	jido

include ../../wip/sysdep/xforms.mk

include ../../wip/BioMove3D/depend.mk

include ../../architecture/genom/depend.mk

include ../../mk/robotpkg.mk