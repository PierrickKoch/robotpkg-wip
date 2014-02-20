# robotpkg Makefile for:	supervision/hyper
# Created:			Arnaud Degroote on Mon,  8 Oct 2012
#

PKGNAME= 		mavlink-${VERSION}
DISTNAME=		${VERSION}
VERSION=		1.0.11
CATEGORIES=		supervision
MASTER_SITES=		https://github.com/mavlink/mavlink/archive/
MASTER_REPOSITORY=	https://github.com/mavlink/mavlink.git

MAINTAINER=		arnaud.degroote@isae.fr
COMMENT=		MAVLink -- Micro Air Vehicle Message Marshalling Library
LICENSE=		gnu-lgpl-v3

WRKSRC= 		${WRKDIR}/mavlink-${VERSION}

CMAKE_ARG_PATH=		..
CONFIGURE_DIRS=		_build

pre-configure:
	mkdir ${WRKSRC}/${CONFIGURE_DIRS}

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
