# robotpkg Makefile for:	wip/jafar-rtslam
# Created:			Cyril Roussillon on Wed, 15 Jun 2011
#

JAFAR_PKG=		rtslam-0.2
PKGREVISION= 	3
CATEGORIES=		wip
JAFAR_COMMENT=		Jafar module to do fast and generic EKF Slam.

include ../../meta-pkgs/jafar/Makefile.common

PKG_SUPPORTED_OPTIONS+=		qdisplay
PKG_OPTION_DESCR.qdisplay=	Enable jafar module qdisplay support.
define PKG_OPTION_SET.qdisplay
  CMAKE_ARGS+=			-DHAVE_MODULE_QDISPLAY=ON
  CMAKE_ARGS+=          -DHAVE_QT4=ON

  include ../../mk/sysdep/qt4-libs.mk
  include ../../wip/jafar-qdisplay/depend.mk
endef
define PKG_OPTION_UNSET.qdisplay
  CMAKE_ARGS+=			-DHAVE_MODULE_QDISPLAY=OFF
  CMAKE_ARGS+=          -DHAVE_QT4=OFF
endef

PKG_SUPPORTED_OPTIONS+=		gdhe
PKG_OPTION_DESCR.gdhe=	Enable jafar module gdhe support.
define PKG_OPTION_SET.gdhe
  CMAKE_ARGS+=			-DHAVE_MODULE_GDHE=ON
  include ../../graphics/jafar-gdhe/depend.mk
endef
define PKG_OPTION_UNSET.gdhe
  CMAKE_ARGS+=			-DHAVE_MODULE_GDHE=OFF
endef

PKG_SUPPORTED_OPTIONS+=		dseg
PKG_OPTION_DESCR.dseg=	Enable jafar module dseg support.
define PKG_OPTION_SET.dseg
  CMAKE_ARGS+=			-DHAVE_MODULE_DSEG=ON
  include ../../wip/jafar-dseg/depend.mk
endef
define PKG_OPTION_UNSET.dseg
  CMAKE_ARGS+=			-DHAVE_MODULE_DSEG=OFF
endef


PKG_SUPPORTED_OPTIONS+=		viam
PKG_OPTION_DESCR.viam=	Enable viam support.
define PKG_OPTION_SET.viam
  CMAKE_ARGS+=			-DHAVE_VIAM=ON
  include ../../image/viam-libs/depend.mk
endef
define PKG_OPTION_UNSET.viam
  CMAKE_ARGS+=			-DHAVE_VIAM=OFF
endef

PKG_SUPPORTED_OPTIONS+=		MTI
PKG_OPTION_DESCR.MTI=	Enable MTI support.
define PKG_OPTION_SET.MTI
  CMAKE_ARGS+=			-DHAVE_MTI=ON
  include ../../hardware/MTI/depend.mk
endef
define PKG_OPTION_UNSET.MTI
  CMAKE_ARGS+=			-DHAVE_MTI=OFF
endef

PKG_SUPPORTED_OPTIONS+=		posterLib
PKG_OPTION_DESCR.posterLib=	Enable posterLib support.
define PKG_OPTION_SET.posterLib
  CMAKE_ARGS+=			-DHAVE_POSTERLIB=ON
  include ../../middleware/pocolibs/depend.mk
endef
define PKG_OPTION_UNSET.posterLib
  CMAKE_ARGS+=			-DHAVE_POSTERLIB=OFF
endef

include ../../devel/jafar-kernel/depend.mk
include ../../image/jafar-image/depend.mk
include ../../math/jafar-jmath/depend.mk
include ../../image/jafar-correl/depend.mk

include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
