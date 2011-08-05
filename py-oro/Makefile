# robotpkg Makefile for:	knowledge/py-oro
# Created:			Severin Lemaignan on Fri, 05 Aug 2011
#

VERSION=		1.0
PKGNAME= 		${PKGTAG.python}-oro-${VERSION}
DISTNAME=		pyoro-${VERSION}
CATEGORIES=		knowledge

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=pyoro/}
MASTER_REPOSITORY=	git http://softs.laas.fr/git/robots/pyoro.git

MAINTAINER=	openrobots@laas.fr
HOMEPAGE=	http://oro.openrobots.org
COMMENT=	Python bindings for oro-server
LICENSE=	2-clause-bsd

PYTHON_REQUIRED+=	<3
PYDISTUTILSPKG= 	ON

include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
