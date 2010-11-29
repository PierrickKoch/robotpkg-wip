# robotpkg Makefile for:	path/Move3D-core
# Created:			Jim Mainprice on Mon, 29 Nov 2010
#

DISTNAME=		Move3D-core-3.7.14
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=Move3D-libs/}
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

CMAKE_ARGS+= -DCOMPILE_MOVE3DCORE=ON
include ../../graphics/pqp/depend.mk
include ../../math/gbM/depend.mk
include ../../motion/softMotion-libs/depend.mk

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
