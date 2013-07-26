# robotpkg Makefile for:	architecture/genom3-ros
# Created:			Anthony Mallet on Fri, 19 Oct 2012
#

DISTNAME=	genomix-1.3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_OPENROBOTS:=genomix/}
MASTER_REPOSITORY= git git://git.openrobots.org/git/robots/genomix

MAINTAINER=	mallet@laas.fr
HOMEPAGE=	https://homepages.laas.fr/mallet/soft/architecture/genom3
COMMENT=	HTTP server for controlling GenoM3 components

LICENSE=	2-clause-bsd

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--with-tcl=$(dir ${TCL_CONFIG_SH})
NOT_FOR_PLATFORM=	# empty

DEPEND_ABI.tcl=	tcl>=8.5

include ../../pkgtools/pkg-config/depend.mk
include ../../wip/genom3/depend.mk
include ../../mk/sysdep/tcl.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk
