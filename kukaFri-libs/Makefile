# robotpkg Makefile for:	hardware/kukaFri-libs
# Created:			Xavier Broquere on Tue, 26 Oct 2010
#

VERSION=		1.2
DISTNAME=		kukaFri-libs-${VERSION}
CATEGORIES=		hardware
COMMENT=		Package based on the Fast Research Interface (FRI) provided by Kuka
MAINTAINER=		xavier.broquere@laas.fr


LICENSE=		kuka-license


INTERACTIVE_STAGE=	fetch
FETCH_MESSAGE+= " The file ${DISTNAME}${EXTRACT_SUFX} containing the kukaFri-libs version ${VERSION}"
FETCH_MESSAGE+= ""
FETCH_MESSAGE+= " must be put manually into:"
FETCH_MESSAGE+= "       ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX}"



include ../../mk/sysdep/cmake.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
