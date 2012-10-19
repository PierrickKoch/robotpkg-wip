# robotpkg Makefile for:	architecture/genom3
# Created:			Anthony Mallet on Fri, 19 Oct 2012
#

VERSION=	2.99.14
DISTNAME=	genom-${VERSION}
PKGNAME=	genom3-${VERSION}
CATEGORIES=	architecture
MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=genom/}
MASTER_REPOSITORY= git ssh://trac.laas.fr/git/robots/genom3

MAINTAINER=	mallet@laas.fr
HOMEPAGE=	https://homepages.laas.fr/mallet/soft/architecture/genom3
COMMENT=	Software components generator for robotics architecture.

LICENSE=	2-clause-bsd

GNU_CONFIGURE=	yes
NOT_FOR_PLATFORM=	# empty

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/flex.mk
include ../../mk/sysdep/bison.mk
include ../../mk/robotpkg.mk
