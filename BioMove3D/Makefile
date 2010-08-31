# robotpkg Makefile for:	path/BioMove3D
# Created:			Severin Lemaignan on Tue, 31 Aug 2010
#

DISTNAME=		BioMove3D-3.5
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=BioMove3D/}
MASTER_REPOSITORY=	git /usr/local/motion/BioMove3d.git

MAINTAINER=		biomove3dgitrepo@laas.fr
COMMENT=		Motion planning and geometric reasonning module
#BioMove 3D is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2


USE_LANGUAGES+=		c c++

PKG_OPTIONS_REQUIRED_GROUPS=	robot
PKG_OPTIONS_GROUP.robot=	jido

PKG_SUGGESTED_OPTIONS+=	jido

PKG_OPTION_DESCR.jido=	Compile BioMove3D for Jido
PKG_OPTION_SET.jido:=	CMAKE_ARGS+= COMPILE_ON_JIDO

define PKG_OPTION_SET.jido
  
endef

include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
