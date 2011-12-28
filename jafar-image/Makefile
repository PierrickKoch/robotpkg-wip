PKGVERSION=		2.1
PKGREVISION=	2
DISTNAME=		jafar-image-2.1
PKGNAME=		jafar-image-2.1
CATEGORIES=		image
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jafar-image/}
MAINTAINER=		jafar@laas.fr
HOMEPAGE=		https://intranet.laas.fr/intranet/robots/wiki/Jafar
COMMENT=		Jafar module for basic image processing, it is based on the OpenCV library
LICENSE=		isc

USE_LANGUAGES+=		c c++ fortran
USE_PKGLOCALEDIR=	yes

CPPFLAGS += -DJFR_NDEBUG
CXXFLAGS += -pthread

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

include ../../wip/jafar-kernel/depend.mk
include ../../wip/jafar-jmath/depend.mk
include ../../image/opencv/depend.mk
include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../math/boost-numeric-bindings/depend.mk

include ../../pkgtools/libtool/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
