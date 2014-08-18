# robotpkg Makefile for:	mapping/octoviz
# Created:			Arnaud Degroote on Wed, 22 May 2013
#

PKGVERSION=	1.6.1
DISTNAME=	v${PKGVERSION_NOREV}
PKGNAME=	octoviz-${PKGVERSION}

CATEGORIES=		mapping
MASTER_SITES=	https://github.com/OctoMap/octomap/archive/

HOMEPAGE=	http://http://octomap.github.io/

COMMENT=	Octomap visualizer

LICENSE=	gnu-gpl-v2

WRKSRC=     ${WRKDIR}/octomap-${PKGVERSION_NOREV}/octovis

CMAKE_ARGS+= 	-Doctomap_DIR=${PREFIX.octomap}/share/octomap

include ../../mapping/octomap/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/qt4-libs.mk
include ../../mk/sysdep/mesa.mk # OpenGL
include ../../wip/mk/sysdep/libqglviewer.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
