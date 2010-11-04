# robotpkg Makefile for:	graphics/assimp
# Created:			Matthieu Herrb on Thu, 4 Nov 2010
#

DISTNAME=	assimp--${PKGVERSION}-sdk
PKGVERSION=	1.1.700
PKGNAME=	assimp-${PKGVERSION}
EXTRACT_SUFX=	.zip

CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=assimp/}

HOMEPAGE=	http://assimp.sourceforge.net

COMMENT=	Portable library to import various well-known 3D model formats

LICENSE=	modified-bsd

EXTRACT_OPTS=	-d assimp
WRKSRC=		${WRKDIR}/assimp

USE_LANGUAGES=	c c++

include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
