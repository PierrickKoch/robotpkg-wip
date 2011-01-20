# robotpkg Makefile for:	path/mhp-genom
# Created:			Severin Lemaignan on Tue, 31 Aug 2010
#

DISTNAME=		mhp-genom-3.4
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=mhp-genom/}
MASTER_REPOSITORY=	git ssh://softs.laas.fr/git/robots/mhp-genom

MAINTAINER=		easisbot@laas.fr
COMMENT=		Motion in Human Presence module
#mhp-genom is currently GPL because it depends on BioMove3D that depends itself 
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2


USE_LANGUAGES+=		c c++

#####################
#### MHP OPTIONS ####
#####################

PKG_OPTIONS_REQUIRED_GROUPS=	robot
PKG_OPTIONS_GROUP.robot=	hrp2 jido simulation

##
## HRP2
##
PKG_OPTION_DESCR.hrp2=	Compile MHP for HRP2

define PKG_OPTION_SET.hrp2
  GENOM_ARGS+= -DHRP2
  include ../../localization/pom-genom/depend.mk
  include ../../image/viman-genom/depend.mk
endef

##
## Jido
##
PKG_OPTION_DESCR.jido=	Compile MHP for Jido

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
PKG_OPTION_DESCR.simulation=	Compile MHP for simulation only
PKG_OPTION_SET.simulation:=	GENOM_ARGS+= -DSIMULATION
PKG_SUGGESTED_OPTIONS+=	simulation
##
## SPARK synchonization
##
PKG_SUPPORTED_OPTIONS+=	spark
PKG_OPTION_DESCR.spark=	Enable the support of synchro between spark and mhp

define PKG_OPTION_SET.spark
  GENOM_ARGS+= -DSPARK
  include ../../wip/spark-genom/depend.mk
endef


##
## Ontology server
##
PKG_SUPPORTED_OPTIONS+=	oro
PKG_OPTION_DESCR.oro=	Enable the support of ORO ontology server

define PKG_OPTION_SET.oro
  GENOM_ARGS+= -DORO
  include ../../knowledge/liboro/depend.mk
endef

#####################

GENOM_MODULE=		mhp

## BioMove3D dependency
## Build BioMove3D with the "Jido" profile to get all required options for
# HRI with BioMove3D
REQD_BUILD_OPTIONS.BioMove3D:=	jido

include ../../wip/sysdep/xforms.mk

include ../../wip/BioMove3D/depend.mk

include ../../architecture/genom/depend.mk

include ../../mk/robotpkg.mk
