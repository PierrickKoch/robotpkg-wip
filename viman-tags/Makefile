# Create by Severin Lemaignan on Fri, 06 Jan 2011


PKGNAME= 			viman-tags-${PKG_DATE}
PKG_DATE=				20110106

DISTNAME=			${PKGNAME}

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=viman-tags/}
MASTER_REPOSITORY=	git http://trac.laas.fr/git/robots/viman-tags.git

CATEGORIES=	wip
LICENSE=	isc
MAINTAINER=	openrobots@laas.fr
COMMENT=	ARToolkit tags of objects in use at LAAS

NO_CONFIGURE=	yes
NO_BUILD=		yes

include ../../pkgtools/pax/depend.mk
include ../../pkgtools/install-sh/depend.mk
include ../../mk/robotpkg.mk

do-install:
	install -d ${PREFIX}/share/viman/
	cd ${WRKSRC} && ${PAX} -rwp ma . ${PREFIX}/share/viman/


