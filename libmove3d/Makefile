# robotpkg Makefile for:	path/libmove3d
# Created:			Severin Lemaignan on Fri, 11 Feb 2011
#

DISTNAME=			libmove3d-3.9.1
CATEGORIES=			path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=BioMove3D/}
MASTER_REPOSITORY=	git http://trac.laas.fr/git/robots/BioMove3D.git

MAINTAINER=			biomove3dgitrepo@laas.fr
COMMENT=			Library for motion planning and geometric reasonning

#libmove3d is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=			gnu-gpl-v2

USE_LANGUAGES+=		c c++

CMAKE_ARGS+= -DGENERATE_LIBMOVE3D=ON

## Dependencies 
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
include ../../mk/robotpkg.mk
