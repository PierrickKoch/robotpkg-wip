# robotpkg Makefile for:	path/MPC
# Created:			Arnaud Degroote on Tue, 10 Jan 2012
#

DISTNAME=		MPC-${VERSION}
VERSION=		1.0
PKGREVISION=	2
CATEGORIES=		path
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=MPC/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS_TRAC}MPC


MAINTAINER=		openrobots@laas.fr
COMMENT=		Libraries for outdoor robots navigation
LICENSE=		isc


CMAKE_ARG_PATH=		MPC/
CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/freeglut.mk
include ../../mk/sysdep/glib2.mk
include ../../mk/sysdep/glu.mk
include ../../mk/sysdep/libX11.mk
include ../../mk/sysdep/mesa.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
