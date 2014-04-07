# robotpkg depend.mk for:	graphics/orocos-dot_service
# Created:			Charles Lesire on Mon, 9 Sep 2013
#
NAME=			orocos-dot_service
DISTNAME=		${NAME}-${VERSION}
VERSION=		20120308
CATEGORIES=		graphics

DISTFILES=		98d79bd092f298d09bba368e1122ce499b6d2f30.tar.gz
MASTER_SITES=		https://gitorious.org/rtt_dot_service/rtt_dot_service/archive/
WRKSRC=         	${WRKDIR}/rtt_dot_service-rtt_dot_service
MASTER_REPOSITORY=	git git://gitorious.org/rtt_dot_service/rtt_dot_service.git

MAINTAINER=		charles.lesire@onera.fr
COMMENT=		An Orocos service to create architecture 'dot' views
LICENSE=		gnu-lgpl-v2.1
HOMEPAGE=		http://gitorious.org/rtt_dot_service

DEPEND_ABI.orocos-rtt =	orocos-rtt>=2

CMAKE_ARGS+=		-DGRAPHVIZ_INCLUDE_DIR=${PREFIX.graphviz}/include
CMAKE_ARGS+=		-DOROCOS-RTT_DIR=${PREFIX.orocos-rtt}/lib/cmake/orocos-rtt

include ../../middleware/orocos-rtt/depend.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c++.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk

