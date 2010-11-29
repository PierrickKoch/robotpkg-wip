# robotpkg Makefile for:	path/Move3D-motionPlanner-libs
# Created:			Jim Mainprice on Thu, 12 Nov 2010
#

DISTNAME=		Move3D-main-1.0.0
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=Move3D-libs/}
MASTER_REPOSITORY=	git http://trac.laas.fr/git/robots/Move3D-main.git

MAINTAINER=		biomove3dgitrepo@laas.fr
COMMENT=		C++ Motion planning algorithms and GUI based on Qt
#BioMove 3D is currently GPL because it depends
# on GSL and GLPK that are 2 GLP librairies.
LICENSE=		gnu-gpl-v2

USE_LANGUAGES+=		c c++

CMAKE_ARGS+= -DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+= -DBOOST_LIBRARYDIR=${PREFIX.boost-libs}/lib

PKG_OPTIONS_REQUIRED_GROUPS=	mode
PKG_OPTIONS_GROUP.mode=	standalone GUI

##
## Option GUI
##
PKG_OPTION_DESCR.GUI= Compile Move3D-motionPlanner-libs with GUI

define PKG_OPTION_SET.GUI
	CMAKE_ARGS+= -DCOMPILE_WITH_GUI=ON
	include ../../wip/sysdep/qt.mk
endef


## Default option
PKG_SUGGESTED_OPTIONS+=	standalone

## Common includes
include ../../mk/sysdep/cmake.mk
include ../../wip/sysdep/qt.mk

include ../../mk/robotpkg.mk
