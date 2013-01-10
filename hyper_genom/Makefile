# robotpkg Makefile for:	supervision/hyper_genom
# Created:			Arnaud Degroote on Mon,  8 Oct 2012
#

DISTNAME=		hyper_genom-${VERSION}
VERSION=		0.9
CATEGORIES=		supervision
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=hyper_genom/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}hyper_genom


MAINTAINER=		arnaud.degroote@laas.fr
COMMENT=		Link between Hyper and Genom
LICENSE=		2-clause-bsd


CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

DEPEND_ABI.boost-libs=boost-libs>=1.46.1
DEPEND_ABI.boost-headers=boost-headers>=1.46.1

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../wip/hyper/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
