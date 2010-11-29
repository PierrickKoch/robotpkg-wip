# robotpkg Makefile for:	path/Move3D-motionPlanner-libs
# Created:			Jim Mainprice on Thu, 12 Nov 2010
#

DISTNAME=		Move3D-motionPlanner-libs-1.0.0
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=Move3D-libs/}
MASTER_REPOSITORY=	git http://trac.laas.fr/git/robots/Move3D-motionPlanner-libs.git

MAINTAINER=		biomove3dgitrepo@laas.fr
COMMENT=		C++ (object oriented) Motion planning algorithms based on Move3D-core
#BioMove 3D is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2

USE_LANGUAGES+=		c c++

CMAKE_ARGS+= -DEigen_INCLUDE_DIR=${PREFIX.eigen2}/include/eigen2
CMAKE_ARGS+= -DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+= -DBOOST_LIBRARYDIR=${PREFIX.boost-libs}/lib

## Common includes
include ../../wip/Move3D-core/depend.mk

include ../../mk/sysdep/cmake.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/glu.mk
include ../../math/eigen2/depend.mk
include ../../wip/sysdep/libxpm.mk
include ../../wip/sysdep/qt.mk
include ../../mk/robotpkg.mk
