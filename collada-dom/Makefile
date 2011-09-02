# robotpkg Makefile for:	graphics/collada-dom
# Created:			Francois Lancelot on Thur, 01 Sep 2011
#
PKGVERSION=		2.3.1
PKGNAME=	    collada-dom-${PKGVERSION}
DISTNAME=		collada_dom-${PKGVERSION}-src
MASTER_SITES=   ${MASTER_SITE_OPENROBOTS}
EXTRACT_SUFX=		.tgz

CATEGORIES=		graphics
HOMEPAGE=		http://collada-dom.sourceforge.net/
MAINTAINER=		rosen.diankov@gmail.com
COMMENT=		Library that provides a C++ object representation of a COLLADA XML instance document
LICENSE=		mit	
USE_LANGUAGES+=	c c++

WRKSRC=			${WRKDIR}/${PKGNAME}
CMAKE_ARG_PATH=		..
CONFIGURE_DIRS=		build

INSTALLATION_DIRS=	include/collada-dom
# create the build directory
pre-configure:
	${RUN}${MKDIR} ${WRKSRC}/build
	
# General configuration
CMAKE_ARGS+=		-DOPT_COLLADA14=OFF

include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk

