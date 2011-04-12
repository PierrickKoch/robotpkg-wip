# robotpkg Makefile for:	simulation/morse-pocolibs
# Created:			Anthony Mallet on Thu, 31 Mar 2011
#

PKGNAME=		morse-pocolibs-${MORSE_VERSION}

include ../../simulation/morse/Makefile.common

COMMENT+=		(pocolibs bindings)

CMAKE_ARGS+=		-DBUILD_CORE_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_DOC_SUPPORT=OFF

CMAKE_ARGS+=		-DBUILD_POCOLIBS_SUPPORT=ON
CMAKE_ARGS+=		-DBUILD_ROS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_YARP2_SUPPORT=OFF

CMAKE_ARGS+=		-DSWIG_EXECUTABLE=${PREFIX.swig}/bin/swig

# pocolibs support
PKG_SUPPORTED_OPTIONS+=		outdoor
PKG_OPTION_DESCR.outdoor=	Enable support for field robotics components

define PKG_OPTION_SET.outdoor
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_POM_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_VIAM_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_PLATINE_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_GENPOS_SUPPORT=ON

  include ../../interfaces/genPos-genom/depend.mk
  include ../../image/viam-genom/depend.mk
  include ../../localization/pom-genom/depend.mk
endef

PKG_SUPPORTED_OPTIONS+=		hri
PKG_OPTION_DESCR.hri=\
	Enable support for human-robot interaction components

define PKG_OPTION_SET.hri
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_POM_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_LWR_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_VIMAN_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_HUMAN_POSTURE_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_GENPOS_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_PLATINE_SUPPORT=ON

  include ../../interfaces/genPos-genom/depend.mk
  include ../../localization/pom-genom/depend.mk
  include ../../wip/lwr-genom/depend.mk
  include ../../wip/spark-genom/depend.mk
  include ../../image/viman-genom/depend.mk
endef

include ../../simulation/morse/depend.mk
include ../../mk/sysdep/swig.mk
include ../../mk/robotpkg.mk
