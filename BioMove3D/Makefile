# robotpkg Makefile for:	path/BioMove3D
# Created:			Severin Lemaignan on Tue, 31 Aug 2010
#

DISTNAME=		BioMove3D-3.5
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=BioMove3D/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/BioMove3d

MAINTAINER=		biomove3dgitrepo@laas.fr
COMMENT=		Motion planning and geometric reasonning module
#BioMove 3D is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2


USE_LANGUAGES+=		c c++

CMAKE_ARGS+= -DEigen_INCLUDE_DIR=${PREFIX.eigen2}/include/eigen2
CMAKE_ARGS+= -DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+= -DBOOST_LIBRARYDIR=${PREFIX.boost-libs}/lib

PKG_OPTIONS_REQUIRED_GROUPS=	robot
PKG_OPTIONS_GROUP.robot=	jido

PKG_SUGGESTED_OPTIONS+=	jido

PKG_OPTION_DESCR.jido=	Compile BioMove3D for Jido

define PKG_OPTION_SET.jido
  CMAKE_ARGS+= -DCOMPILE_ON_JIDO=ON
  include ../../mk/sysdep/gsl.mk
  
  include ../../wip/pqp-libs/depend.mk
  
  include ../../math/gbM/depend.mk
  include ../../motion/softMotion-libs/depend.mk

endef

include ../../mk/sysdep/cmake.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk

include ../../mk/sysdep/glu.mk
include ../../math/eigen2/depend.mk
include ../../wip/sysdep/glpk.mk
include ../../wip/sysdep/gts.mk
include ../../wip/sysdep/qhull.mk
include ../../wip/sysdep/libxpm.mk
include ../../wip/sysdep/xforms.mk

include ../../mk/robotpkg.mk
