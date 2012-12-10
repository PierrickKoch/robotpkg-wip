VERSION=		0.1
DISTNAME=		jafar-correl-0.1
PKGNAME=		jafar-correl-0.1
CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jafar-correl/}
MAINTAINER=		jafar@laas.fr
HOMEPAGE=		https://intranet.laas.fr/intranet/robots/wiki/Jafar
COMMENT=		Jafar module with image correlation functions
LICENSE=		isc

USE_LANGUAGES+=		c c++ fortran
USE_PKGLOCALEDIR=	yes

CPPFLAGS += -DJFR_NDEBUG
CXXFLAGS += -pthread

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

include ../../devel/jafar-kernel/depend.mk
include ../../image/jafar-image/depend.mk
include ../../math/jafar-jmath/depend.mk
include ../../image/opencv/depend.mk

include ../../pkgtools/libtool/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
