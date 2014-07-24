# robotpkg Makefile for:	interfaces/optitrack-genom3
# Created:			Anthony Mallet on Fri, 28 Mar 2014
#

DISTNAME=		optitrack-genom3-1.1
CATEGORIES=		interfaces
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=${PKGBASE}/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_OPENROBOTS}optitrack-genom3

MAINTAINER=		openrobots@laas.fr
COMMENT=		Export motion capture data from an Optitrack system
LICENSE=		isc

include ../../wip/genom3/module.mk

include ../../pkgtools/pkg-config/depend.mk
include ../../wip/openrobots-idl/depend.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
