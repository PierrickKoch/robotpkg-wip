# robotpkg Makefile for:	path/libhri
# Created:			Jim Mainprice on Fri, 15 Apr 2011
#

DISTNAME=			libhri-1.0
CATEGORIES=			path
MASTER_SITES=			${MASTER_SITE_OPENROBOTS:=libhri/}
MASTER_REPOSITORY=		git http://trac.laas.fr/git/robots/libhri.git

MAINTAINER=			robots-source@laas.fr
COMMENT=			Spatial reasonning & motion planning considering explicility the human

#libhri is currently GPL because it depends
# on GSL that is a GPL librairies.
LICENSE=			gnu-gpl-v2

USE_LANGUAGES+=		c c++


## Dependencies 
include ../../wip/libmove3d/depend.mk
include ../../mk/sysdep/gsl.mk

include ../../mk/sysdep/cmake.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/robotpkg.mk
