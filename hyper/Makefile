# robotpkg Makefile for:	supervision/hyper
# Created:			Arnaud Degroote on Mon,  8 Oct 2012
#

DISTNAME=		hyper-${VERSION}
VERSION=		0.9
PKGREVISION=	2
CATEGORIES=		supervision
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=hyper/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}hyper


MAINTAINER=		arnaud.degroote@laas.fr
COMMENT=		Multi-agent supervision framework for autonomous robots
LICENSE=		2-clause-bsd

MAKE_JOBS_SAFE=		no # because gcc eats up to 1GB for some files...

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

DEPEND_ABI.boost-libs=boost-libs>=1.46.1
DEPEND_ABI.boost-headers=boost-headers>=1.46.1

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
