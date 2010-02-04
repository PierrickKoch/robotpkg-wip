# Copyright (c) 2010 LAAS/CNRS
# All rights reserved.
#
# Redistribution and use  in source  and binary  forms,  with or without
# modification, are permitted provided that the following conditions are
# met:
#
#   1. Redistributions of  source  code must retain the  above copyright
#      notice and this list of conditions.
#   2. Redistributions in binary form must reproduce the above copyright
#      notice and  this list of  conditions in the  documentation and/or
#      other materials provided with the distribution.
#
#                                      Thomas Moulard on Thu Feb 4 2010
#

DISTNAME=		visp-${VERSION}
PKGNAME=		ViSP-${VERSION}
VERSION=		2.4.4

CATEGORIES=		image devel
MASTER_SITES=		http://gforge.inria.fr/frs/download.php/25154/

MAINTAINER=		visp@irisa.fr
HOMEPAGE=		http://www.irisa.fr/lagadic/visp/
COMMENT=		The Visual Servoing Platform.

WRKSRC=			${WRKDIR}/ViSP-code

USE_LANGUAGES+=		c c++


#######################
# Configuration flags #
#######################
# See http://www.irisa.fr/lagadic/visp/librarieslist.html for details.

# Compile in release mode (enable optimizations).
CMAKE_ARGS+=		-DCMAKE_BUILD_TYPE=Release

# Build shared libs.
#FIXME: seems to be broken, extremely annoying.
#CMAKE_ARGS+=		-DBUILD_SHARED_LIBS=ON

# Enable misc. optional features.
CMAKE_ARGS+=		-DDC1394_2=ON -DUSE_GSL=ON -DUSE_GTK2=ON
CMAKE_ARGS+=		-DUSE_LIBJPEG=ON -DUSE_LIBPNG=ON -DUSE_OPENCV=ON
CMAKE_ARGS+=		-DUSE_V4L2=ON -DUSE_XML2=ON

# Enable Coin with SoQT.
CMAKE_ARGS+=		-DUSE_COIN_SIMULATOR=ON -DDESIRED_QT_VERSION=3

# Keep backward compatibilities.
CMAKE_ARGS+=		-DBUILD_DEPRECATED=ON

# Disable uninstalled features
CMAKE_ARGS+=		-DBUILD_EXAMPLE=OFF

# FIXME: do not work for me.
CMAKE_ARGS+=		-DUSE_FFMPEG=OFF

# FIXME: is it okay?
CMAKE_ARGS+=		-DBUILD_TESTING=OFF


# FIXME:
# missing system dependencies:
# - Coin + Qt + SoQt
# - GSL
# - V4L2
# - XML2
# - libjpeg, libpng
# All packages are available in Fedora 12.

include ../../image/libdc1394/depend.mk
#FIXME: no depend.mk for this package?
#include ../../image/libdc1394-1/depend.mk
include ../../image/opencv/depend.mk

include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/gtk.mk

#FIXME: how to check for Qt properly? qmake?
#include ../../mk/sysdep/qmake.mk

include ../../mk/robotpkg.mk
