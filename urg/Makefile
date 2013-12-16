# robotpkg Makefile for:	hardware/urg
# Created:			Arnaud Degroote on Mon, 16 Dec 2013
#

DISTNAME=		urg-${VERSION}
VERSION=		0.8.18
CATEGORIES=		hardware
MASTER_SITES=	http://www.hokuyo-aut.jp/02sensor/07scanner/download/urg_programs_en/
EXTRACT_SUFX= 	.zip

GNU_CONFIGURE=	yes

MAINTAINER=		arnaud.degroote@sae.fr
COMMENT=		Drivers for URG laser scanner
LICENSE=		gnu-lgpl-v3

include ../../pkgtools/pkg-config/depend.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/sysdep/SDL_net.mk
include ../../mk/robotpkg.mk
