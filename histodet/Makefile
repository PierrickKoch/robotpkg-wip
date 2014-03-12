# robotpkg Makefile for:	image/histodet
# Created:			Arnaud Degroote on Thu, 12 Sep 2013
#

DISTNAME=		histodet-${VERSION}
VERSION=		1.0
CATEGORIES=		image
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=histodet/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS_TRAC}histodet
PKGREVISION= 	2

MAINTAINER=		robotpkg@laas.fr
COMMENT=		Fast object detector based on histogram
LICENSE=		2-clause-bsd

PKG_SUPPORTED_OPTIONS+=	demo
PKG_OPTION_DESCR.demo?=	Install demo histodet tool, including the learning tool
define PKG_OPTION_SET.demo
	CMAKE_ARGS+=		-DBUILD_DEMO=ON
#	requiere opencv_highgui
endef
define PKG_OPTION_UNSET.demo
  	CMAKE_ARGS+=		-DBUILD_DEMO=OFF
endef

include ../../image/opencv/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
