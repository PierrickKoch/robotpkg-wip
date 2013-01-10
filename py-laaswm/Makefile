
VERSION=		1.3
PKGNAME= 		${PKGTAG.python}-laaswm-${VERSION}
DISTNAME=		laaswm-libs-${VERSION}
COMMENT=	    Python bindings to remotely control windows in laaswm
CATEGORIES=	    graphics

MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=laaswm-libs/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}laaswm-libs
LICENSE=	isc

MAINTAINER=	openrobots@laas.fr

DEPEND_ABI.python+=	python<3
PYDISTUTILSPKG= 	ON

include ../../mk/sysdep/python.mk

include ../../mk/language/c.mk
include ../../mk/robotpkg.mk

