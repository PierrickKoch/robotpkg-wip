PKGVERSION=		1.1
DISTNAME=		jafar-lgl-1.1
PKGNAME=		jafar-lgl-1.1
CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jafar-lgl/}
MAINTAINER=		jafar@laas.fr
HOMEPAGE=		https://intranet.laas.fr/intranet/robots/wiki/Jafar
COMMENT=		Laas Graph Library. Build navigation graphs from a georeferenced raster image.
LICENSE=		isc

USE_LANGUAGES+=		c c++ fortran
USE_PKGLOCALEDIR=	yes

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include



PKG_SUPPORTED_OPTIONS+=		qdisplay
PKG_OPTION_DESCR.qdisplay=	Enable jafar module qdisplay support.
define PKG_OPTION_SET.qdisplay
  CMAKE_ARGS+=			-DHAVE_MODULE_QDISPLAY=ON
  include ../../graphics/jafar-qdisplay/depend.mk
endef
define PKG_OPTION_UNSET.qdisplay
  CMAKE_ARGS+=			-DHAVE_MODULE_QDISPLAY=OFF
endef

include ../../wip/jafar-kernel/depend.mk

include ../../pkgtools/libtool/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
