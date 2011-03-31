# robotpkg Makefile for:	simulation/morse
# Created:			Séverin Lemaignan on Fri, 28 May 2010
#

PKGNAME=		morse-${MORSE_VERSION}

include ../../wip/morse/Makefile.common

CMAKE_ARGS+=		-DBUILD_CORE_SUPPORT=ON

CMAKE_ARGS+=		-DBUILD_POCOLIBS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_ROS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_YARP2_SUPPORT=OFF

# doc option
PKG_SUPPORTED_OPTIONS+=	doc
PKG_SUGGESTED_OPTIONS+=	doc
PKG_OPTION_DESCR.doc?=	Install ${PKGBASE} documentation

define PKG_OPTION_SET.doc
  CMAKE_ARGS+=		-DBUILD_DOC_SUPPORT=ON
  include ../../mk/sysdep/py-sphinx.mk
endef
define PKG_OPTION_UNSET.doc
  CMAKE_ARGS+=		-DBUILD_DOC_SUPPORT=OFF
endef

include ../../mk/sysdep/python2.mk
include ../../mk/robotpkg.mk
