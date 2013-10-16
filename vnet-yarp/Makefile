# robotpkg Makefile for:	action/vnet-yarp
# Created:			Arnaud Degroote on Wed, 16 Nov 2011
#

DISTNAME=			vnet-yarp-0.2
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=action/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/action/vnet-yarp

CATEGORIES=		action
MAINTAINER=		action@laas.fr
COMMENT=		Virtual Network for Yarp

LICENSE=		2-clause-bsd

DEPEND_ABI.boost-header = 	boost-headers>=1.43
DEPEND_ABI.boost-libs= 		boost-libs>=1.43

CMAKE_ARGS+=        -DBoost_INCLUDE_DIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=        -DBoost_LIBRARY_DIR=${PREFIX.boost-libs}/lib

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../middleware/yarp/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
