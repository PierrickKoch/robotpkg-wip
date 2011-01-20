# robotpkg Makefile for:	hardware/libfreenect
# Created:			Matthieu Herrb on Sat, 13 Nov 2010
#

COMMIT=		2ea3eb
PKG_VERSION=	20110118.${COMMIT}
DISTNAME= 	libfreenect-${PKG_VERSION}
CATEGORIES=	hardware image
MASTER_SITES=	https://github.com/OpenKinect/libfreenect.git@${COMMIT}
FETCH_METHOD=	git

MAINTAINER=	robotpkg@laas.fr
HOMEPAGE=	http://openkinect.org/
COMMENT=	Kinect(tm) Camera driver
LICENSE=	apache-2.0

USE_LANGUAGES= c c++ python

#option for opencv wrapping and demo building
PKG_SUPPORTED_OPTIONS+=		opencv
PKG_SUGGESTED_OPTIONS-=		opencv
PKG_OPTION_DESCR.opencv=	Build OpenCV wrapper and demo.
define PKG_OPTION_SET.opencv
  CMAKE_ARGS+=			-DBUILD_CV=ON -DCMAKE_C_CFLAGS=-I${ROBOTPKG_BASE}/include
	include ../../image/opencv/depend.mk
  CONFIGURE_ENV+= 
endef
define PKG_OPTION_UNSET.opencv
  CMAKE_ARGS+=			-DBUILD_CV=OFF
endef

include ../../pkgtools/install-sh/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/libXmu.mk
include ../../mk/robotpkg.mk
