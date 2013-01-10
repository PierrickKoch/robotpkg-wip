
VERSION=		1.4
PKGNAME= 		laaswm-gui-${VERSION}
DISTNAME=		laaswm-libs-${VERSION}
CATEGORIES=	    graphics

MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=laaswm-libs/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}laaswm-libs
LICENSE=	isc

MAINTAINER=	openrobots@laas.fr
COMMENT=	A user interface to remotely control windows in laaswm. Written with PyGTK

NO_CONFIGURE= yes
BUILD_DIRS=	${WRKSRC}/gui

DEPEND_ABI.python+=	python<3
PYDISTUTILSPKG= 	ON

include ../../wip/py-laaswm/depend.mk

include ../../mk/sysdep/python.mk
include ../../mk/sysdep/py-setuptools.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
