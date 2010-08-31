# robotpkg Makefile for:	path/mhp-genom
# Created:			Severin Lemaignan on Tue, 31 Aug 2010
#

DISTNAME=		mhp-genom-2.1
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=mhp-genom/}
MASTER_REPOSITORY=	git ssh://softs/git/robots/mhp-genom

MAINTAINER=		easisbot@laas.fr
COMMENT=		Motion in Human Presence module
#mhp-genom is currently GPL because it depends on BioMove3D that depends itself 
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2


USE_LANGUAGES+=		c c++

PKG_OPTIONS_REQUIRED_GROUPS=	robot
PKG_OPTIONS_GROUP.robot=	hrp2 jido simulation

PKG_OPTION_DESCR.hrp2=	Compile MHP for HRP2
PKG_OPTION_SET.hrp2:=	GENOM_ARGS+= -DHRP2

define PKG_OPTION_SET.hrp2
  include ../../localization/pom-genom/depend.mk
  include ../../image/viman-genom/depend.mk
endef

PKG_OPTION_DESCR.jido=	Compile MHP for Jido
PKG_OPTION_SET.jido:=	GENOM_ARGS+= -DJIDO

define PKG_OPTION_SET.jido
  include ../../localization/pom-genom/depend.mk
  include ../../image/viman-genom/depend.mk
endef

PKG_OPTION_DESCR.simulation=	Compile MHP for simulation only
PKG_OPTION_SET.simulation:=	GENOM_ARGS+= -DSIMULATION

PKG_SUGGESTED_OPTIONS+=	simulation

PKG_SUPPORTED_OPTIONS+=	oro
PKG_SUGGESTED_OPTIONS+=	oro
PKG_OPTION_DESCR.oro=	Enable the support of ORO ontology server
PKG_OPTION_SET.oro:=	GENOM_ARGS+= -DORO

define PKG_OPTION_SET.oro
  include ../../knowledge/liboro/depend.mk
endef

GENOM_MODULE=		mhp

include ../../architecture/genom/depend.mk

include ../../mk/robotpkg.mk
