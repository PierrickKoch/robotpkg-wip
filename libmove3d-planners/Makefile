# robotpkg Makefile for:	path/libmove3d-planners
# Created:			Jim Mainprice on Thu, 2 Feb 2011
#

DISTNAME=		libmove3d-planners-1.3.4
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=libmove3d-planners/}
MASTER_REPOSITORY=	git git://trac.laas.fr/robots/libmove3d-planners
PKGREVISION= 	0

MAINTAINER=		biomove3dgitrepo@laas.fr
COMMENT=		C++ (object oriented) Motion planning algorithms based on libmove3d
#BioMove 3D is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2


NOT_FOR_PLATFORM= #	%-x86_64

CMAKE_ARGS+= -DEigen_INCLUDE_DIR=${PREFIX.eigen3}/include/eigen3
CMAKE_ARGS+= -DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+= -DBOOST_LIBRARYDIR=${PREFIX.boost-libs}/lib

DEPEND_ABI.boost-libs?= boost-libs{>=1.34.1<1.49,>=1.50}

## HATP connection option
PKG_SUPPORTED_OPTIONS+= hatp_connection
PKG_OPTION_DESCR.hatp_connection= Enable connection to HATP for intricate task and motion planning

define PKG_OPTION_SET.hatp_connection
  CMAKE_ARGS+= -DHATP_CONNECTION=ON
  include ../../wip/msgconnector/depend.mk
  include ../../devel/jsoncpp/depend.mk
endef

## Common includes
include ../../wip/libmove3d/depend.mk
include ../../wip/libmove3d-hri/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/glu.mk
include ../../math/eigen3/depend.mk
include ../../wip/sysdep/libxpm.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
include ../../pkgtools/pkg-config/depend.mk
