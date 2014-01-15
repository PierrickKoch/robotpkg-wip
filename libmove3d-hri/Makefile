# robotpkg Makefile for:	path/libmove3d-hri
# Created:			Jim Mainprice on Fri, 15 Apr 2011
#

DISTNAME=			libmove3d-hri-2.22
CATEGORIES=			path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=libmove3d-hri/}
MASTER_REPOSITORY=	git git://git.openrobots.org/robots/libmove3d-hri.git

MAINTAINER=			robots-source@laas.fr
COMMENT=			Human centered spatial reasonning & motion planning 

#libhri is currently GPL because it depends
# on GSL that is a GPL librairies.
LICENSE=			gnu-gpl-v2


CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include

PKG_SUPPORTED_OPTIONS+=	mightability_maps
PKG_OPTION_DESCR.mightability_maps = Compile with mightability maps support
PKG_OPTION_SET.mightability_maps:= CMAKE_ARGS+= -DUSE_MIGHTABILITY_MAPS=ON

## Dependencies 
include ../../devel/boost-headers/depend.mk

include ../../wip/libmove3d/depend.mk
include ../../mk/sysdep/gsl.mk

include ../../mk/sysdep/cmake.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
