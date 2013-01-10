# robotpkg Makefile for:	interface/jointStateMapper
# Created:			Mokhtar Gharbi on Fri, 25 Mar 2011
#

DISTNAME=			jointStateMapper-1.2.1
PKGREVISION=			1
CATEGORIES=			interface
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=jointStateMapper/}
MASTER_REPOSITORY=	git ssh://trac.laas.fr/git/robots/jointStateMapper

MAINTAINER=			mokhtar.gharbi@laas.fr
COMMENT=			Library to translate the joint state order from a model to another one
LICENSE=			2-clause-bsd


include ../../interfaces/openrobots-pose/depend.mk

include ../../mk/sysdep/cmake.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk
