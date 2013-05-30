# robotpkg Makefile for:	supervision/hyper
# Created:			Arnaud Degroote on Mon,  8 Oct 2012
#

DISTNAME=		hyper-${VERSION}
VERSION=		0.11
PKGREVISION= 	1
CATEGORIES=		supervision
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=hyper/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}hyper


MAINTAINER=		arnaud.degroote@laas.fr
COMMENT=		Multi-agent supervision framework for autonomous robots
LICENSE=		2-clause-bsd

MAKE_JOBS_SAFE=		no # because gcc eats up to 1GB for some files...

CMAKE_ARGS+=		-DBOOST_INCLUDEDIR=${PREFIX.boost-headers}/include
CMAKE_ARGS+=		-DBOOST_LIBDIR=${PREFIX.boost-libs}/include

# doc option
PKG_SUPPORTED_OPTIONS+=	doc
PKG_OPTION_DESCR.doc?=	Install ${PKGBASE} documentation

define PKG_OPTION_SET.doc
  CMAKE_ARGS+=		-DBUILD_DOC=ON
  CMAKE_ARGS+=		-DSPHINX_BUILD=${PREFIX.py-sphinx}/bin/sphinx-build
  include ../../mk/sysdep/py-sphinx.mk
endef
define PKG_OPTION_UNSET.doc
  CMAKE_ARGS+=		-DBUILD_DOC=OFF
endef

DEPEND_ABI.boost-libs=boost-libs>=1.46.1
DEPEND_ABI.boost-headers=boost-headers>=1.46.1

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
