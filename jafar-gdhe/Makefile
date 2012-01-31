# robotpkg Makefile for:	wip/jafar-gdhe
# Created:			Cyril Roussillon on Wed, 15 Jun 2011
#

PKGVERSION=		0.1
PKGREVISION=	2
DISTNAME=		jafar-gdhe-0.1
PKGNAME=		jafar-gdhe-0.1
CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jafar-gdhe/}
MAINTAINER=		jafar@laas.fr
HOMEPAGE=		https://intranet.laas.fr/intranet/robots/wiki/Jafar
COMMENT=		Jafar module to talk to a gdhe server in c++
LICENSE=		isc

USE_LANGUAGES+=		c c++ fortran
USE_PKGLOCALEDIR=	yes

CPPFLAGS += -DJFR_NDEBUG
CXXFLAGS += -pthread

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

include ../../wip/jafar-kernel/depend.mk
include ../../wip/jafar-jmath/depend.mk
include ../../graphics/gdhe/depend.mk
include ../../math/boost-numeric-bindings/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk

include ../../pkgtools/libtool/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
