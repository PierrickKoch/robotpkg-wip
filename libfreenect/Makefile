# robotpkg Makefile for:	hardware/libfreenect
# Created:			Matthieu Herrb on Sat, 13 Nov 2010
#

COMMENT= Horribly hacky first take at a Kinect Camera driver
CATEGORIES = hardware image
LICENSE = apache-2.0
PKG_VERSION=9f2802

DISTNAME= libfreenect-${PKG_VERSION}
HOMEPAGE= https://github.com/ros-pkg-git/libfreenect/

FETCH_BEFORE_ARGS= -v
FETCH_METHOD= git
MASTER_SITES= https://github.com/ros-pkg-git/libfreenect.git@${PKG_VERSION}+c

WRKSRC=${WRKDIR}/${DISTNAME}/c

USE_LANGUAGES= c c++

include ../../pkgtools/install-sh/depend.mk
include ../../mk/sysdep/python2.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk

do-install:
	pwd
	${INSTALL_DATA} ${WRKSRC}/include/libfreenect.h \
		${DESTDIR}${PREFIX}/include
	${INSTALL_LIB} ${WRKSRC}/lib/libfreenect.so ${DESTDIR}${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKSRC}/examples/glview \
		${DESTDIR}${PREFIX}/bin/libfreenect-glview

