# robotpkg Makefile for:	path/libmove3d-planners
# Created:			Jim Mainprice on Thu, 2 Feb 2011
#

DISTNAME=		libmove3d-planners-1.3.2
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=libmove3d-planners/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/libmove3d-planners
PKGREVISION= 	2

MAINTAINER=		biomove3dgitrepo@laas.fr
COMMENT=		C++ (object oriented) Motion planning algorithms based on libmove3d
#BioMove 3D is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2


NOT_FOR_PLATFORM= #	%-x86_64

CMAKE_ARGS+= -DEigen_INCLUDE_DIR=${PREFIX.eigen2}/include/eigen2
CMAKE_ARGS+= -DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+= -DBOOST_LIBRARYDIR=${PREFIX.boost-libs}/lib

PREFER.boost-headers = robotpkg
PREFER.boost-libs = robotpkg

## Common includes
include ../../wip/libmove3d/depend.mk
include ../../wip/libmove3d-hri/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/glu.mk
include ../../math/eigen2/depend.mk
include ../../wip/sysdep/libxpm.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
include ../../pkgtools/pkg-config/depend.mk
