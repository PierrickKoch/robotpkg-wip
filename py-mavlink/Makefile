# robotpkg Makefile for:	net/py27-mavlink
# Created:			Arnaud Degroote on Fri, 30 Jan 2015
#

DISTNAME= 		pymavlink-${VERSION}
PKGNAME=		${PKGTAG.python}-mavlink-${VERSION}
VERSION=		1.1.50
CATEGORIES=		middleware

COMMIT= 			54e826fb8037dfa8dcdd2ce0de6d9bf5dd783048
FETCH_METHOD= 		git
MASTER_SITES=		https://github.com/mavlink/mavlink.git@${COMMIT}
MASTER_REPOSITORY=	https://github.com/mavlink/mavlink.git

MAINTAINER=		arnaud.degroote@isae-supaero.fr
COMMENT=		MAVLink -- Micro Air Vehicle Message Marshalling Library -- python interface
LICENSE=		gnu-lgpl-v3

WRKSRC= 			${WRKDIR}/pymavlink-${VERSION}/pymavlink
PYDISTUTILSPKG=		yes

include ../../mk/language/c.mk
include ../../mk/sysdep/python.mk
include ../../mk/robotpkg.mk
