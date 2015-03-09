# robotpkg Makefile for:        wip/glog
# Created:                      Ellon Paiva Mendes <emendes@laas.fr>, 9 Mar. 2015
#

NAME=			glog
VERSION=		v0.3.3
GITHUB_USER=	google
CATEGORIES=		wip

DISTNAME=		${NAME}-${VERSION}
DISTBASE=		${GITHUB_USER}/${NAME}/archive/
MASTER_SITES=		${MASTER_SITE_GITHUB:=${DISTBASE}${VERSION}${EXTRACT_SUFX}?f=}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/${GITHUB_USER}/${NAME}.git
WRKSRC=             ${WRKDIR}/glog-0.3.3

MAINTAINER=		ellon.mendes@laas.fr
COMMENT=		"The glog library implements application-level logging"
LICENSE=		modified-bsd

include ../../mk/sysdep/autoconf.mk

include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
