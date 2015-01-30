# robotpkg Makefile for:	net/py27-mavlink
# Created:			Arnaud Degroote on Fri, 30 Jan 2015
#

PKGNAME= 		${PKGTAG.python}-mavlink-${VERSION}
DISTNAME=		${VERSION}
VERSION=		1.0.11
CATEGORIES=		net
MASTER_SITES=		https://github.com/mavlink/mavlink/archive/
MASTER_REPOSITORY=	https://github.com/mavlink/mavlink.git

MAINTAINER=		arnaud.degroote@isae-supaero.fr
COMMENT=		MAVLink -- Micro Air Vehicle Message Marshalling Library -- python interface
LICENSE=		gnu-lgpl-v3

WRKSRC= 		${WRKDIR}/mavlink-${VERSION}

# XXX The generated / installed stuff seems to be python3 compatible but the
# code generator used to generate it used really old library, only working with
# python2
DEPEND_ABI.python= 		python>=2.5<3

CMAKE_ARG_PATH=		..
CONFIGURE_DIRS=		_build
INSTALLATION_DIRS= 	${PYTHON_SITELIB}/pymavlink

pre-configure:
	mkdir -p ${WRKSRC}/${CONFIGURE_DIRS}

_installdir=${PREFIX}/${PYTHON_SITELIB}/pymavlink
do-install:
	cd ${WRKSRC}/${CONFIGURE_DIRS}/pymavlink/pymavlink && ${PAX} -rwp ma *.py ${_installdir}
post-install: python-compile-all(${_installdir})


include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
