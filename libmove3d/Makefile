# robotpkg Makefile for:	path/libmove3d
# Created:			Severin Lemaignan on Fri, 11 Feb 2011
#

DISTNAME=			libmove3d-3.18.1
PKGREVISION=		1
CATEGORIES=			path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=libmove3d/}
MASTER_REPOSITORY=	git ssh://git.openrobots.org/git/robots/libmove3d.git

MAINTAINER=			biomove3dgitrepo@laas.fr
COMMENT=			Library for motion planning and geometric reasonning

#libmove3d is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=			gnu-gpl-v2


CMAKE_ARGS+= -DGENERATE_VIEWER_LIB=ON
CMAKE_ARGS+=\
  -DGLIBCONFIG_INCLUDE_DIR=$(dir $(filter %/glibconfig.h,${SYSTEM_FILES.glib2}))
CMAKE_ARGS+=\
  -DGLIB_INCLUDE_DIR=$(dir $(filter %/glib.h,${SYSTEM_FILES.glib2}))

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

# Dependencies
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/gbM/depend.mk
include ../../motion/softMotion-libs/depend.mk

include ../../mk/sysdep/glu.mk
include ../../mk/sysdep/freeglut.mk
include ../../mk/sysdep/gsl.mk
include ../../mk/sysdep/libxml2.mk
include ../../mk/sysdep/glib2.mk

include ../../wip/sysdep/glpk.mk
include ../../wip/sysdep/gts.mk
include ../../wip/sysdep/qhull.mk
include ../../wip/sysdep/libxpm.mk

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
