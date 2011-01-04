# robotpkg Makefile for:	path/BioMove3D
# Created:			Severin Lemaignan on Tue, 31 Aug 2010
#

DISTNAME=		BioMove3D-3.7.17
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=BioMove3D/}
MASTER_REPOSITORY=	git http://trac.laas.fr/git/robots/BioMove3D.git

MAINTAINER=		biomove3dgitrepo@laas.fr
COMMENT=		Motion planning and geometric reasonning module
#BioMove 3D is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2

USE_LANGUAGES+=		c c++

CMAKE_ARGS+= -DEigen_INCLUDE_DIR=${PREFIX.eigen2}/include/eigen2
CMAKE_ARGS+= -DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+= -DBOOST_LIBRARYDIR=${PREFIX.boost-libs}/lib

PKG_OPTIONS_REQUIRED_GROUPS=	mode
PKG_OPTIONS_GROUP.mode=	standalone jido

##
## Option standalone
##
PKG_OPTION_DESCR.standalone=	Compile BioMove3D as an executable
define PKG_OPTION_SET.standalone

endef

##
## Option jido
##
PKG_OPTION_DESCR.jido=	Compile BioMove3D for Jido as a library only

define PKG_OPTION_SET.jido
  CMAKE_ARGS+= -DCOMPILE_FOR_GENOM=ON
  include ../../graphics/pqp/depend.mk
  include ../../math/gbM/depend.mk
  include ../../motion/softMotion-libs/depend.mk
endef


## Default option
PKG_SUGGESTED_OPTIONS+=	jido

## Common includes
include ../../mk/sysdep/cmake.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/glu.mk
include ../../math/eigen2/depend.mk
include ../../mk/sysdep/gsl.mk

include ../../wip/sysdep/glpk.mk
include ../../wip/sysdep/gts.mk
include ../../wip/sysdep/qhull.mk
include ../../wip/sysdep/libxpm.mk
include ../../wip/sysdep/qt.mk

include ../../mk/robotpkg.mk
