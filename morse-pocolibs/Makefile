# robotpkg Makefile for:	simulation/morse-pocolibs
# Created:			Anthony Mallet on Thu, 31 Mar 2011
#

PKGNAME=		morse-pocolibs-${MORSE_VERSION}
PKGREVISION= 	1

include ../../simulation/morse/Makefile.common

COMMENT+=		(pocolibs bindings)

CMAKE_ARGS+=		-DBUILD_CORE_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_DOC_SUPPORT=OFF

CMAKE_ARGS+=		-DBUILD_POCOLIBS_SUPPORT=ON
CMAKE_ARGS+=		-DBUILD_ROS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_YARP2_SUPPORT=OFF


PKG_SUPPORTED_OPTIONS+=		viam
PKG_OPTION_DESCR.viam =	Enable support for image camera support

define PKG_OPTION_SET.viam
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_VIAM_SUPPORT=ON

  include ../../image/viam-genom/depend.mk
  include ../../middleware/pocolibs/depend.mk
endef

PKG_SUPPORTED_OPTIONS+=		stereopixel
PKG_OPTION_DESCR.stereopixel =	Enable support for depth camera (stereopixel) support

define PKG_OPTION_SET.stereopixel
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_STEREOPIXEL_SUPPORT=ON

  include ../../image/stereopixel-genom/depend.mk
  include ../../middleware/pocolibs/depend.mk
endef

PKG_SUPPORTED_OPTIONS+=		velodyne
PKG_OPTION_DESCR.velodyne =	Enable support for velodyne support

define PKG_OPTION_SET.velodyne
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_VELODYNE_SUPPORT=ON

  include ../../hardware/velodyne-genom/depend.mk
  include ../../middleware/pocolibs/depend.mk
endef

include ../../simulation/morse/depend.mk
include ../../mk/robotpkg.mk

_pycompile_dir=${PREFIX}/${PYTHON_SITELIB}/morse/middleware/pocolibs*
post-install: python-compile-all(${_pycompile_dir})
