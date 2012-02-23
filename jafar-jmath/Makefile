VERSION=		0.3
DISTNAME=		jafar-jmath-${VERSION}
PKGNAME=		jafar-jmath-${VERSION}
CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jafar-jmath/}
MAINTAINER=		jafar@laas.fr
HOMEPAGE=		https://intranet.laas.fr/intranet/robots/wiki/Jafar
COMMENT=		Jafar module that defines some common mathematical tools: vector and matrix manipulation, random number generation,...
LICENSE=		isc

USE_LANGUAGES+=		c c++ fortran
USE_PKGLOCALEDIR=	yes

CPPFLAGS += -DJFR_NDEBUG
CXXFLAGS += -pthread

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

PKG_SUPPORTED_OPTIONS+=		FLANN
PKG_OPTION_DESCR.FLANN=	Enable FLANN support.
define PKG_OPTION_SET.FLANN
  CMAKE_ARGS+=			-DHAVE_FLANN=ON
  include ../../wip/flann/depend.mk
endef
define PKG_OPTION_UNSET.FLANN
  CMAKE_ARGS+=			-DHAVE_FLANN=OFF
endef

include ../../wip/jafar-kernel/depend.mk
include ../../math/lapack/depend.mk
include ../../math/boost-numeric-bindings/depend.mk

include ../../pkgtools/libtool/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
