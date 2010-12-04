# robotpkg Makefile for:	hardware/libfreenect
# Created:			Matthieu Herrb on Sat, 13 Nov 2010
#

COMMIT=		539b28
PKG_VERSION=	20101124.${COMMIT}
DISTNAME= 	libfreenect-${PKG_VERSION}
CATEGORIES=	hardware image
MASTER_SITES=	https://github.com/OpenKinect/libfreenect.git@${COMMIT}
FETCH_METHOD=	git

MAINTAINER=	robotpkg@laas.fr
HOMEPAGE=	http://openkinect.org/
COMMENT=	Kinect(tm) Camera driver
LICENSE=	apache-2.0

USE_LANGUAGES= c c++ python

include ../../pkgtools/install-sh/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/libXmu.mk
include ../../mk/robotpkg.mk
