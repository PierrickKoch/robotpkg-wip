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

DISTNAME=		morse-0.1a1
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=morse/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/morse

CATEGORIES=		wip
MAINTAINER=		morse-dev@laas.fr
HOMEPAGE=		http://softs.laas.fr
COMMENT=		A 3D simulator for robotics
LICENSE=		modified-bsd

USE_LANGUAGES+=		c c++ python
BUILD_TARGET=		all
INSTALL_TARGET=		install

# doc option
#PKG_SUPPORTED_OPTIONS+=	doc
#PKG_SUGGESTED_OPTIONS+=	doc
#PKG_OPTION_DESCR.doc?=	Install ${PKGBASE} documentation
#
#define PKG_OPTION_SET.doc
#  BUILD_TARGET+=	doc
#  INSTALL_TARGET+=	install-doc
#endef

# YARP support
PKG_SUPPORTED_OPTIONS+=	yarp
PKG_OPTION_DESCR.yarp?=	Install support for the YARP middleware

define PKG_OPTION_SET.yarp
  CMAKE_ARGS+=		-DBUILD_YARP2_SUPPORT=ON
  include ../../devel/libpyyarp/depend.mk
endef

# Pocolibs support
PKG_SUPPORTED_OPTIONS+=	pocolibs
PKG_OPTION_DESCR.pocolibs?=	Install support for the Pocolibs communication library

define PKG_OPTION_SET.pocolibs
  CMAKE_ARGS+=		-DBUILD_POCOLIBS_SUPPORT=ON
  include ../../architecture/genPos-genom/depend.mk
  include ../../devel/pocolibs/depend.mk
  include ../../hardware/sick-genom/depend.mk
  include ../../image/viam-genom/depend.mk
  include ../../localization/pom-genom/depend.mk
endef

# build examples option
PKG_SUPPORTED_OPTIONS+=	examples
PKG_SUGGESTED_OPTIONS+=	examples
PKG_OPTION_DESCR.examples?=	Build and install scenarii examples

define PKG_OPTION_SET.examples
  CMAKE_ARGS+=		-DBUILD_EXAMPLES=ON
endef

include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/blender.mk
include ../../mk/robotpkg.mk
