PKGVERSION=		0.1
DISTNAME=		jafar-rtslam-${PKGVERSION}
PKGNAME=		jafar-rtslam-${PKGVERSION}
CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jafar-rtslam/}
MAINTAINER=		jafar@laas.fr
HOMEPAGE=		https://intranet.laas.fr/intranet/robots/wiki/Jafar
COMMENT=		Jafar module to do fast and generic EKF Slam.
LICENSE=		isc

USE_LANGUAGES+=		c c++ fortran
USE_PKGLOCALEDIR=	yes

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include



PKG_SUPPORTED_OPTIONS+=		POSTERLIB
PKG_OPTION_DESCR.POSTERLIB=	Enable POSTERLIB support.
define PKG_OPTION_SET.POSTERLIB
  CMAKE_ARGS+=			-DHAVE_POSTERLIB=ON
  include ../../middleware/pocolibs/depend.mk
endef
define PKG_OPTION_UNSET.POSTERLIB
  CMAKE_ARGS+=			-DHAVE_POSTERLIB=OFF
endef

include ../../wip/jafar-kernel/depend.mk
include ../../wip/jafar-image/depend.mk
include ../../wip/jafar-jmath/depend.mk
include ../../wip/jafar-correl/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk

include ../../pkgtools/libtool/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
