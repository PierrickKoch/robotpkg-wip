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
CMAKE_ARGS+=	-DCMAKE_MODULE_PATH=.

# because the package generation is buggy, it declares JAFAR_NDEBUG instead
CPPFLAGS += -DJFR_NDEBUG
CXXFLAGS += -pthread

PKG_SUPPORTED_OPTIONS+=		posterlib
PKG_OPTION_DESCR.posterlib=	Enable posterLib support.
define PKG_OPTION_SET.posterlib
  CMAKE_ARGS+=			-DHAVE_POSTERLIB=ON
  CPPFLAGS+=			-DHAVE_POSTERLIB
  include ../../middleware/pocolibs/depend.mk
endef
define PKG_OPTION_UNSET.posterlib
  CMAKE_ARGS+=			-DHAVE_POSTERLIB=OFF
endef

PKG_SUPPORTED_OPTIONS+=		viam
PKG_OPTION_DESCR.viam=	Enable viam support.
define PKG_OPTION_SET.viam
  CMAKE_ARGS+=			-DHAVE_VIAM=ON
  CPPFLAGS+=			-DHAVE_VIAM
  include ../../image/viam-libs/depend.mk
  REQD_BUILD_OPTIONS.viam-libs+=opencv
  include ../../image/opencv/depend.mk
endef
define PKG_OPTION_UNSET.viam
  CMAKE_ARGS+=			-DHAVE_VIAM=OFF
endef

PKG_SUPPORTED_OPTIONS+=		MTI
PKG_OPTION_DESCR.MTI=	Enable MTI support.
define PKG_OPTION_SET.MTI
  CMAKE_ARGS+=			-DHAVE_MTI=ON
  CPPFLAGS+=			-DHAVE_MTI
  include ../../hardware/MTI/depend.mk
endef
define PKG_OPTION_UNSET.MTI
  CMAKE_ARGS+=			-DHAVE_MTI=OFF
endef

PKG_SUPPORTED_OPTIONS+=	qdisplay
PKG_OPTION_DESCR.qdisplay = Enable jafar module qdisplay support for 2D display
define PKG_OPTION_SET.qdisplay
  CPPFLAGS+=-DHAVE_MODULE_QDISPLAY
  include ../../wip/jafar-qdisplay/depend.mk
endef

PKG_SUPPORTED_OPTIONS+=	gdhe
PKG_OPTION_DESCR.gdhe = Enable jafar module gdhe support for 3D display
define PKG_OPTION_SET.gdhe
  CPPFLAGS+=-DHAVE_MODULE_GDHE
  include ../../wip/jafar-gdhe/depend.mk
  include ../../graphics/gdhe/depend.mk
endef

PKG_SUPPORTED_OPTIONS+=     dseg
PKG_OPTION_DESCR.dseg=  Enable jafar module dseg support for segments
define PKG_OPTION_SET.dseg
  CPPFLAGS+=          -DHAVE_MODULE_DSEG
  include ../../wip/jafar-dseg/depend.mk
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
