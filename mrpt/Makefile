# robotpkg Makefile for:	wip/mrpt
# Created:			Arnaud Degroote on Wed, 11 Dec 2013
#

DISTNAME=		mrpt-${VERSION}
VERSION=		1.0.2
CATEGORIES=		wip
PKGREVISION=	2
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mrpt/}
MASTER_REPOSITORY=	https://github.com/jlblancoc/mrpt

MAINTAINER=		arnaud.degroote@isae.fr
COMMENT=		Mobile Robot Programming Toolkit
HOMEPAGE= 		http://www.mrpt.org
LICENSE=		modified-bsd


DYNAMIC_PLIST_DIRS+=	share/doc/mrpt-doc

include ../../archivers/zlib/depend.mk
include ../../image/opencv/depend.mk
include ../../math/eigen3/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/freeglut.mk
include ../../mk/sysdep/libjpeg.mk
include ../../mk/sysdep/podlators.mk
include ../../mk/sysdep/wxwidgets.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
