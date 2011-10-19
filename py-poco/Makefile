
VERSION=		1.4
PKGNAME= 		${PKGTAG.python}-poco-${VERSION}
DISTNAME=		pypoco-${VERSION}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=pypoco/}
MASTER_REPOSITORY=	git http://trac.laas.fr/git/robots/pypoco.git

CATEGORIES=	wip
LICENSE=	isc
MAINTAINER=	openrobots@laas.fr
COMMENT=	Python bindings for tclServ protocol

DEPEND_ABI.python+=	python<3
PYDISTUTILSPKG= 	ON

include ../../mk/sysdep/python.mk

include ../../mk/robotpkg.mk

