# robotpkg Makefile for:	graphics/robotModelParser-libs
# Created:			Francois Lancelot Fri, 16 Sep 2011
#

DISTNAME= 		robotModelParser-libs-1.0
CATEGORIES=		graphics
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=robotModelParser-libs/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/robotModelParser-libs

MAINTAINER=		lancelot.fr@gmail.com
COMMENT=		Library that offers a class URDFModel, which can be used to parse URDF or Collada 1.5 files.
LICENSE=		original-bsd

USE_LANGUAGES+=		c c++

include ../../graphics/collada-dom/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/robotpkg.mk
