# robotpkg Makefile for:	supervision/transgen
# Created:			Matthieu Herrb on Thu, 12 Mar 2009
#
DISTNAME=	transgen3-1.0b0
CATEGORIES=	supervision
MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=transgen/}

MAINTAINER=		felix@laas.fr
HOMEPAGE=		http://www.openrobots.org/wiki/transgen
LICENSE=		2-clause-bsd
COMMENT=		Glue between Genom modules and OpenPRS.

GNU_CONFIGURE=	yes

DEPEND_ABI.openprs=	openprs>=1.1b1


include ../../wip/genom3/depend.mk
include ../../supervision/openprs/depend.mk
include ../../pkgtools/pkg-config/depend.mk
include ../../mk/sysdep/java.mk
include ../../mk/robotpkg.mk
