# robotpkg Makefile for:	math/lastwave
# Created:			Xavier BROQUERE on Thu, 24 Nov 2011
#

DISTNAME=	LastWave_3_1

CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=lastwave/}

EXTRACT_SUFX=	.unix.zip

MAINTAINER=	openrobots@laas.fr
HOMEPAGE=	http://www.cmap.polytechnique.fr/~bacry/LastWave/
COMMENT=	LastWave is a signal processing oriented command language

include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk

post-extract:
	${CP} ${FILESDIR}/CMakeLists.txt ${WRKSRC}
	${CP} ${FILESDIR}/lastwave.pc.cmake ${WRKSRC}