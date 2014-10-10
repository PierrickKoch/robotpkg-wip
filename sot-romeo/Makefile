# robotpkg Makefile for:	robots/sot-romeo
# Created:			Aurélie Clodic on Wed, 11 Jun 2014
#
DISTNAME=		sot-romeo-1.0.0
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-romeo/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_GITHUB}stack-of-tasks/sot-romeo

CATEGORIES=		robots
COMMENT=		This packages provides a generic Stack Of Tasks library for the humanoid robot Romeo.
LICENSE=		gnu-lgpl-v3
MAINTAINER=		hpp@laas.fr

DYNAMIC_PLIST_DIRS+=	share/doc/sot-romeo

include ../../motion/sot-core/depend.mk
include ../../motion/sot-dynamic/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/cmake.mk
include ../../mk/sysdep/doxygen.mk
include ../../mk/sysdep/graphviz.mk
include ../../mk/sysdep/pdflatex.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
