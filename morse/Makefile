#
# Copyright (c) 2010 LAAS/CNRS
# All rights reserved.
#
# Permission to use, copy, modify, and distribute this software for any purpose
# with or without   fee is hereby granted, provided   that the above  copyright
# notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS  SOFTWARE INCLUDING ALL  IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS. IN NO EVENT SHALL THE AUTHOR  BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR  ANY DAMAGES WHATSOEVER RESULTING  FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION,   ARISING OUT OF OR IN    CONNECTION WITH THE USE   OR
# PERFORMANCE OF THIS SOFTWARE.
#
#                                          Severin Lemaignan on Fri May 28 2010
#

DISTNAME=	    	morse-${VERSION}
VERSION=	    	0.2
PKGREVISION=		1
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=morse/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/morse

CATEGORIES=		wip
MAINTAINER=		morse-dev@laas.fr
HOMEPAGE=		http://softs.laas.fr
COMMENT=		A 3D simulator for robotics
LICENSE=		modified-bsd

USE_LANGUAGES+=		c c++ python
PYTHON_REQUIRED=	>=3

CMAKE_ARGS+=            -DPYTHON3_EXECUTABLE=${PYTHON}
CMAKE_ARGS+=            -DPYTHON3_INCLUDE_PATH=${PYTHON_INCLUDE}
CMAKE_ARGS+=            -DPYTHON3_LIBRARY=${PYTHON_LIB}

BUILD_TARGET=		all
INSTALL_TARGET=		install

# doc option
PKG_SUPPORTED_OPTIONS+=	doc
PKG_SUGGESTED_OPTIONS+=	doc
PKG_OPTION_DESCR.doc?=	Install ${PKGBASE} documentation

define PKG_OPTION_SET.doc
  BUILD_TARGET+=	doc
  #TODO! include ../../mk/sysdep/python-sphinx.mk
endef

# YARP support
PKG_SUPPORTED_OPTIONS+=	yarp
PKG_OPTION_DESCR.yarp?=	Install support for the YARP middleware

define PKG_OPTION_SET.yarp
  CMAKE_ARGS+=		-DBUILD_YARP2_SUPPORT=ON
  include ../../middleware/libpyyarp/depend.mk
endef

# Pocolibs support

PKG_OPTIONS_OPTIONAL_GROUPS=	pocolibs
PKG_OPTIONS_GROUP.pocolibs=	pocolibs-all pocolibs-outdoor pocolibs-hri

PKG_SUPPORTED_OPTIONS+=	pocolibs-outdoor
PKG_OPTION_DESCR.pocolibs-outdoor?=	Install support for Pocolibs modules useful for field robotics

define PKG_OPTION_SET.pocolibs-outdoor
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_POM_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_VIAM_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_PLATINE_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_GENPOS_SUPPORT=ON

  include ../../interfaces/genPos-genom/depend.mk
  include ../../image/viam-genom/depend.mk
  include ../../localization/pom-genom/depend.mk

endef

PKG_SUPPORTED_OPTIONS+=	pocolibs-hri
PKG_OPTION_DESCR.pocolibs-hri?=	Install support for Pocolibs modules useful for human-robot interaction

define PKG_OPTION_SET.pocolibs-hri
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_SUPPORT=ON
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


PKG_SUPPORTED_OPTIONS+=	pocolibs-all
PKG_OPTION_DESCR.pocolibs-all?=	Install support for all Pocolibs modules

define PKG_OPTION_SET.pocolibs-all
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_POM_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_VIAM_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_PLATINE_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_GENPOS_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_LWR_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_VIMAN_SUPPORT=ON
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_HUMAN_POSTURE_SUPPORT=ON
 
  include ../../interfaces/genPos-genom/depend.mk
  include ../../image/viam-genom/depend.mk
  include ../../localization/pom-genom/depend.mk
  include ../../wip/lwr-genom/depend.mk
  include ../../wip/spark-genom/depend.mk
  include ../../image/viman-genom/depend.mk

endef

# ROS support (only partial)
PKG_SUPPORTED_OPTIONS+=	ros
PKG_OPTION_DESCR.ros?=	Install support for the ROS middleware

define PKG_OPTION_SET.ros
  CMAKE_ARGS+=		-DBUILD_ROS_SUPPORT=ON
  include ../../meta-pkgs/ros-base/depend.mk
endef

DEPEND_ABI.blender=	blender>=2.55

include ../../graphics/blender/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
