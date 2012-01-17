# robotpkg Makefile for:	math/geometric-tools
# Created:			Antonio El Khoury on Mon, 16 Jan 2012
#

WM5_NAME=		WildMagic
WM5_VERSION_MAJOR=	5
WM5_VERSION_MINOR=	7

DISTNAME=		${WM5_NAME}${WM5_VERSION_MAJOR}p${WM5_VERSION_MINOR}
EXTRACT_SUFX=		.zip

WRKSRC=			${WRKDIR}/GeometricTools/${WM5_NAME}${WM5_VERSION_MAJOR}

CATEGORIES=		math
MASTER_SITES=		${HOMEPAGE}/Downloads/

PKGNAME=	geometric-tools
MAINTAINER=	hpp@laas.fr
HOMEPAGE=	http://www.geometrictools.com
COMMENT=	Geometric tools for mathematics, physics, numerical methods, and image analysis.
LICENSE=	bsl

USE_LANGUAGES+=		c c++
NO_CONFIGURE=		yes
CFG=			ReleaseDynamic

include ../../pkgtools/pax/depend.mk
include ../../pkgtools/install-sh/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/robotpkg.mk

do-build:
	cd ${WRKSRC} && ${MAKE} CFG=${CFG} -f makefile.wm5

do-install:
	${MKDIR} ${PREFIX}/include/geometric-tools/
	${MKDIR} ${PREFIX}/lib/
	${CP} -R ${WRKSRC}/SDK/Include/*.h ${PREFIX}/include/geometric-tools/
	${CP} -R ${WRKSRC}/SDK/Include/*.inl ${PREFIX}/include/geometric-tools/
	${CP} -R ${WRKSRC}/SDK/Library/${CFG}/* ${PREFIX}/lib/
