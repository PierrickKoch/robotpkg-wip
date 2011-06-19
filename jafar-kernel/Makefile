# robotpkg Makefile for:	wip/jafar-kernel
# Created:			Redouane Boumghar on Thu, 17 Mar 2011
#

PKGVERSION=		0.3
DISTNAME=		jafar-kernel-${PKGVERSION}
CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jafar-kernel/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/jafar/jafar.git

MAINTAINER=		jafar@laas.fr
HOMEPAGE=		https://intranet.laas.fr/intranet/robots/wiki/Jafar
COMMENT=		Defines some jafar common tools: exceptions, debug message facility, data logging facility,...
LICENSE=		isc

USE_LANGUAGES+=		c c++ fortran
USE_PKGLOCALEDIR=	yes

CPPFLAGS += -DJFR_NDEBUG
CXXFLAGS += -pthread

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
