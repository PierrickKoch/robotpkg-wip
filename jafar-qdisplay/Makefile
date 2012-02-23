# robotpkg Makefile for:	wip/jafar-qdisplay
# Created:			Cyril Roussillon on Wed, 15 Jun 2011
#

VERSION=		0.1
DISTNAME=		jafar-qdisplay-0.1
PKGNAME=		jafar-qdisplay-0.1
PKGREVISION=	1
CATEGORIES=		wip
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jafar-qdisplay/}
MAINTAINER=		jafar@laas.fr
HOMEPAGE=		https://intranet.laas.fr/intranet/robots/wiki/Jafar
COMMENT=		Jafar module to display objects of type jafar::image::JfrImage.
LICENSE=		isc

USE_LANGUAGES+=		c c++ fortran
USE_PKGLOCALEDIR=	yes

CPPFLAGS += -DJFR_NDEBUG
CXXFLAGS += -pthread

DEPEND_ABI.qmake= qmake>=2
USE_QMAKE=	no

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include
CMAKE_ARGS+=		-DQT_QMAKE_EXECUTABLE=${QMAKE}

include ../../wip/jafar-kernel/depend.mk
include ../../wip/jafar-image/depend.mk
include ../../wip/jafar-jmath/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/boost-numeric-bindings/depend.mk

include ../../pkgtools/libtool/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/qmake.mk
include ../../mk/sysdep/qt4-libs.mk
include ../../mk/robotpkg.mk
