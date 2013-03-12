# robotpkg Makefile for:	architecture/certi
# Created:			Arnaud Degroote on Tue, 12 Mar 2013
#

COMMIT=		HEAD
PKG_VERSION=	${COMMIT}
DISTNAME= 	certi-${PKG_VERSION}
CATEGORIES=		architecture
MASTER_SITES=	:pserver:anonymous@cvs.savannah.nongnu.org:/sources/certi@${COMMIT}+certi
FETCH_METHOD=	cvs

MAINTAINER=	robotpkg@laas.fr
HOMEPAGE=	https://savannah.nongnu.org/projects/certi
COMMENT=	An Open Source HLA RTI (High Level Architecture)
LICENSE=	gnu-gpl-v2

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/bison.mk
include ../../mk/sysdep/flex.mk
include ../../mk/sysdep/libxml2.mk
include ../../mk/robotpkg.mk
