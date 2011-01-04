# $LAAS: Makefile 2010/01/13 19:17:48 mallet $
#
# Copyright (c) 2009-2010 LAAS/CNRS
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
#                                           Séverin Lemaignan on Mon Dec 7 2009
#

PKGNAME= 			blender-${VERSION}
DISTNAME=			${PKGNAME}
VERSION=			2.56-beta

CATEGORIES=		graphics
MASTER_SITES=	http://download.blender.org/source/

MAINTAINER=		openrobots@laas.fr
HOMEPAGE=		http://www.blender.org/
COMMENT=		Blender is an open source 3D content creation suite

WRKSRC=${WRKDIR}/${DISTNAME}-source

CMAKE_ARG_PATH=		..
CONFIGURE_DIRS=		_build

USE_LANGUAGES+=		c c++

CMAKE_ARGS+=		-DWITH_GAMEENGINE=ON  #GameEngine
CMAKE_ARGS+=		-DWITH_IK_ITASC=ON  #Inverse Kinematics
CMAKE_ARGS+=		-DWITH_OPENCOLLADA=OFF  #Collada support - OFF for now, waiting for stabilization
CMAKE_ARGS+=		-DWITH_PLAYER=ON  #Stand-alone Blender player

# For now, let Blender embed Python
PYTHON_REQD=		3.1
#include ../python3/depend.mk
CMAKE_ARGS+=		-DPYTHON_INC=${PREFIX}/include/python${PYTHON_REQD}
CMAKE_ARGS+=		-DPYTHON_LIBPATH=${PREFIX}/lib
CMAKE_ARGS+=		-DWITH_PYTHON=ON
CMAKE_ARGS+=		-DWITH_PYTHON_INSTALL=ON

pre-configure:
	${MKDIR} ${WRKSRC}/_build

include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
