# robotpkg Makefile for:	wip/sot-dyninv
# Created:			Aurelie Clodic on Thu, 30 Oct 2014
#

PKGNAME=		sot-dyninv-${VERSION}
DISTNAME=		sot-dyninv-${VERSION}
VERSION=		2.0.0
PKGREVISION=		0

MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-dyninv/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}/stack-of-tasks/sot-dyninv

MAINTAINER=	hpp@laas.fr
CATEGORIES=	wip
LICENSE=	gnu-lgpl-v3

DYNAMIC_PLIST_DIRS+=	share/doc/sot-dyninv

include ../../interfaces/jrl-mal/depend.mk
include ../../motion/py-dynamic-graph/depend.mk
include ../../motion/sot-core/depend.mk
include ../../wip/soth/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
