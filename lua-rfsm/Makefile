# robotpkg Makefile for:	supervision/lua-rfsm
# Created:			Arnaud Degroote on Thu, 12 Dec 2013
#

COMMIT= 	    44fcec2db5
PKG_VERSION=    20131212.${COMMIT}
DISTNAME= 		lua-rfsm-${PKG_VERSION}
CATEGORIES=		supervision
MASTER_SITES=	https://github.com/kmarkus/rFSM.git@${COMMIT}
FETCH_METHOD=	git
PKGREVISION= 	1

MAINTAINER=		arnaud.degroote@isae.fr
COMMENT=		rFSM is a reduced (lightweight) Statechart implementation written in pure Lua.
LICENSE=		gnu-lgpl-v3

NO_CONFIGURE=	yes
NO_BUILD=		yes

include ../../mk/sysdep/lua.mk
include ../../mk/robotpkg.mk

do-install:
	install -d ${PREFIX}/bin
	install -d ${PREFIX}/lib/lua/rfsm
	install -d ${PREFIX}/share/doc/rfsm
	install -d ${PREFIX}/share/rfsm/examples

	cd ${WRKSRC}/tools && ${PAX} -rwp ma rfsm* ${PREFIX}/bin
	cd ${WRKSRC} && ${PAX} -rwp ma *.lua ${PREFIX}/lib/lua/rfsm
	cd ${WRKSRC}/doc && ${PAX} -rwp ma . ${PREFIX}/share/doc/rfsm
	cd ${WRKSRC}/examples && ${PAX} -rwp ma . ${PREFIX}/share/rfsm/examples
