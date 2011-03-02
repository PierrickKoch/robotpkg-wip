# robotpkg Makefile for:	path/Move3D-core
# Created:			Jim Mainprice on Mon, 29 Nov 2010
#

DISTNAME=		libmove3d-viewer-3.10.1
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=BioMove3D/}
MASTER_REPOSITORY=	git http://trac.laas.fr/git/robots/BioMove3D.git

MAINTAINER=		biomove3dgitrepo@laas.fr
COMMENT=		Motion planning and geometric reasonning module
#BioMove 3D is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2

NOT_FOR_PLATFORM=
USE_LANGUAGES+=		c c++

CMAKE_ARGS+= -DGENERATE_VIEWER_LIB=ON

CMAKE_ARGS+= -DEigen_INCLUDE_DIR=${PREFIX.eigen2}/include/eigen2
CMAKE_ARGS+= -DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+= -DBOOST_LIBRARYDIR=${PREFIX.boost-libs}/lib

include ../../math/gbM/depend.mk
include ../../motion/softMotion-libs/depend.mk

## Common includes
include ../../mk/sysdep/cmake.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/eigen2/depend.mk

include ../../wip/sysdep/glpk.mk
include ../../wip/sysdep/gts.mk
include ../../wip/sysdep/qhull.mk
include ../../wip/sysdep/libxpm.mk

include ../../mk/sysdep/glu.mk
include ../../mk/sysdep/gsl.mk
include ../../mk/sysdep/libxml2.mk
include ../../mk/sysdep/glib2.mk

include ../../mk/sysdep/qt4-libs.mk
include ../../mk/robotpkg.mk
