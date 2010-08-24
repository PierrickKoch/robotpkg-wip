# robotpkg Makefile for:	modeling/vcg-libply
# Created:			nksallem on Tue, 24 Aug 2010
#

PKGVERSION=		20100824
PKGNAME=		vcg-libply-${PKGVERSION}
DISTNAME=		vcglib-${PKGVERSION}.svn3811

CATEGORIES=		modeling devel
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=external/vcglib/}
MASTER_REPOSITORY=	\
	svn https://vcg.svn.sourceforge.net/svnroot/vcg/trunk/vcglib

MAINTAINER=		mallet@laas.fr
HOMEPAGE=		http://vcg.sourceforge.net/index.php/VCGLib
COMMENT=		C++ library for PLY file manipulation.
LICENSE=		gnu-gpl-v2

WRKSRC=			${WRKDIR}/vcglib/wrap/ply

USE_LANGUAGES+=		c++

include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk

post-extract:
	 ${CP} ${FILESDIR}/CMakeLists.txt ${WRKSRC}
