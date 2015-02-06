# robotpkg Makefile for:	planning/hatponboard-lib
# Created:			Raphaël Lallement, 22/05/2013
#

DISTNAME=		hatponboard-lib-${VERSION}
VERSION=		3.1.0
PKGREVISION=		1
CATEGORIES=		planning
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=hatponboard-lib/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}hatp/hatponboard-lib


MAINTAINER=		raphael.lallement@laas.fr
COMMENT=		Libraries and parser needed by HATPOnboard
LICENSE=		2-clause-bsd

MAKE_JOBS_SAFE=		yes

DEPEND_ABI.boost-libs=boost-libs>=1.34
DEPEND_ABI.boost-headers=boost-headers>=1.34

PKG_SUPPORTED_OPTIONS+= enable-goal
PKG_SUGGESTED_OPTIONS+= enable-goal
PKG_OPTION_DESCR.enable-goal= Enable the verification of methods goal after their projection
define PKG_OPTION_SET.enable-goal
	CMAKE_ARGS+= -DENABLE_METHOD_GOAL_TEST=ON
endef
define PKG_OPTION_UNSET.enable-goal
	CMAKE_ARGS+= -DENABLE_METHOD_GOAL_TEST=OFF
endef

PKG_SUPPORTED_OPTIONS+=	doc
PKG_OPTION_DESCR.doc= Enable the documentation generation
define PKG_OPTION_SET.doc
	include ../../mk/sysdep/doxygen.mk
endef

# Find Antlr binary name and pass it to CMake 
CMAKE_ARGS+= -DAntlr_INCLUDE=${ANTLR_INCLUDE} -DAntlr_BIN=${ANTLR_BIN} -DAntlr_LIB=${ANTLR_LIB}

include ../../devel/boost-headers/depend.mk
include ../../devel/boost-libs/depend.mk
include ../../wip/antlr2/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
