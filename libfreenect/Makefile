# robotpkg Makefile for:	hardware/libfreenect
# Created:			Matthieu Herrb on Sat, 13 Nov 2010
#

COMMENT= Horribly hacky first take at a Kinect Camera driver
CATEGORIES = hardware image
LICENSE = gnu-gpl-v2

DISTNAME= libfreenect-938a2d5
HOMEPAGE= http://git.marcansoft.com/?p=libfreenect.git

USE_LANGUAGES= c c++

include ../../pkgtools/install-sh/depend.mk
include ../../mk/sysdep/python2.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk

do-install:
	pwd
	${INSTALL_DATA} ${WRKSRC}/include/libfreenect.h \
		${DESTDIR}${PREFIX}/include
	${INSTALL_LIB} ${WRKSRC}/lib/libfreenect.a ${DESTDIR}${PREFIX}/lib



