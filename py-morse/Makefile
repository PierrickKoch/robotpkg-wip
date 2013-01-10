# robotpkg Makefile for:	simulation/py-morse
# Created:			Severin Lemaignan on Tue, 12 Apr 2011
#

VERSION=		0.6
PKGNAME=		${PKGTAG.python}-morse-${VERSION}
DISTNAME=		morse-${VERSION}
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=morse/}
MASTER_REPOSITORY=	git git://git.openrobots.org/robots/morse
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		simulation
MAINTAINER=		morse-dev@laas.fr
HOMEPAGE=		http://morse.openrobots.org
COMMENT=		Python bindings for the MORSE simulator for robotics
LICENSE=		modified-bsd


CMAKE_ARGS+=		-DBUILD_CORE_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_DOC_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_HLA_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_MOOS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_POCOLIBS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_ROS_SUPPORT=OFF
CMAKE_ARGS+=		-DBUILD_YARP2_SUPPORT=OFF

CMAKE_ARGS+=		-DPYMORSE_SUPPORT=ON

DEPEND_ABI.python+=	python>=2.6<3.3

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/cmake.mk

include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

