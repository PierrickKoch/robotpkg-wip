# robotpkg Makefile for:	knowledge/oro-view
# Created:			Séverin Lemaignan, on Wed 19/10/2011
#

DISTNAME=	oro-view-1.0
CATEGORIES=	knowledge
MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=oro-view/}
MASTER_REPOSITORY=	git ssh://softs.laas.fr/git/robots/oro-view

COMMENT=	OpenGL-based viewer for ontologies exposed by oro-server
MAINTAINER=	severin.lemaignan@laas.fr
LICENSE=	gnu-gpl-v3

USE_LANGUAGES+=	c c++
GNU_CONFIGURE=	yes

include ../../pkgtools/pkg-config/depend.mk
include ../../knowledge/liboro/depend.mk
include ../../wip/jsoncpp/depend.mk
include ../../mk/sysdep/ftgl.mk
include ../../mk/sysdep/SDL.mk
include ../../mk/sysdep/SDL_image.mk
include ../../mk/sysdep/autoconf.mk
include ../../mk/sysdep/automake.mk
include ../../mk/robotpkg.mk

pre-configure: autoreconf
