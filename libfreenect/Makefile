# robotpkg Makefile for:	hardware/libfreenect
# Created:			Matthieu Herrb on Sat, 13 Nov 2010
#

COMMENT= Kinect Camera driver
CATEGORIES = hardware image
LICENSE = apache-2.0
COMMIT=539b28
PKG_VERSION=20101124.${COMMIT}

DISTNAME= libfreenect-${PKG_VERSION}
HOMEPAGE= http://openkinect.org/

FETCH_BEFORE_ARGS= -v
FETCH_METHOD= git
MASTER_SITES= https://github.com/OpenKinect/libfreenect.git@${COMMIT}+

WRKSRC=${WRKDIR}/${DISTNAME}

USE_LANGUAGES= c c++

include ../../pkgtools/install-sh/depend.mk
include ../../mk/sysdep/python2.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk

