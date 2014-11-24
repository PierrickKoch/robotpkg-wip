# robotpkg Makefile for:	supervision/hyper-viewer
# Created:			Arnaud Degroote on Sun, 20 Apr 2014
#

PKGNAME= 		hyper-viewer-${VERSION}
DISTNAME=		hyper_viewer-${VERSION}
VERSION=		0.1
CATEGORIES=		supervision
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=hyper_viewer/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS_TRAC}hyper_viewer
PKGREVISION= 		1

MAINTAINER=		arnaud.degroote@laas.fr
COMMENT=		Viewer for the Hyper supervision tool
LICENSE=		2-clause-bsd

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

DEPEND_ABI.boost-libs=boost-libs>=1.46.1
DEPEND_ABI.boost-headers=boost-headers>=1.46.1

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../wip/hyper/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/qt4-libs.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
