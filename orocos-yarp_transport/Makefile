# robotpkg Makefile for:	middleware/orocos-yarp_transport
# Created:			Charles Lesire on Tue, 10 Sep 2013
#
NAME=			orocos-yarp_transport
VERSION=		20150316
DISTNAME=		${NAME}-${VERSION}
CATEGORIES=		middleware

COMMIT= 			c28e3ca4c9998a8be127fa46d6b740cc87326e06
FETCH_METHOD= 		git
MASTER_SITES=		https://github.com/adegroote/orocos-yarp-transport.git@${COMMIT}
MASTER_REPOSITORY=	git https://github.com/adegroote/orocos-yarp-transport.git

MAINTAINER=		charles.lesire@onera.fr
COMMENT=		The YARP transport for the Orocos toolchain
LICENSE=		gnu-lgpl-v2.1
HOMEPAGE=		https://github.com/adegroote/orocos-yarp-transport

DEPEND_ABI.orocos-rtt =	orocos-rtt>=2.5
DEPEND_ABI.yarp = yarp>=2.2

CMAKE_ARGS+=		-DOROCOS-RTT_DIR=${PREFIX.orocos-rtt}/lib/cmake/orocos-rtt

PKG_SUPPORTED_OPTIONS+=	doc
PKG_SUGGESTED_OPTIONS+=	doc
PKG_OPTION_DESCR.doc?=	Install ${PKGBASE} documentation
define PKG_OPTION_SET.doc
  CMAKE_ARGS+=		-DBUILD_DOC=ON
  include ../sysdep/docbook.mk
endef
define PKG_OPTION_UNSET.doc
  CMAKE_ARGS+=		-DBUILD_DOC=OFF
endef

include ../../middleware/orocos-rtt/depend.mk
include ../../middleware/yarp/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk

