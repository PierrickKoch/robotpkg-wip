# robotpkg Makefile for:	math/liblbfgs
# Created:			Nizar Sallem on Fri, 12 Nov 2010
#

PKGNAME= 	ann-${VERSION}
DISTNAME=	ann_${VERSION}
VERSION=1.1.2
CATEGORIES=	math
MASTER_SITES=	http://www.cs.umd.edu/~mount/ANN/Files/${VERSION}/

MAINTAINER=	openrobots@laas.fr
HOMEPAGE=	http://www.cs.umd.edu/~mount/ANN
COMMENT=	Approximate nearest neighbor searching library
LICENSE=	gnu-lgpl-v2

INSTALLATION_DIRS= include/ANN
NO_CONFIGURE= yes
MAKE_JOBS_SAFE=no

BUILD_TARGET=unix-libtool

include ../../pkgtools/libtool/depend.mk
include ../../archivers/pax/depend.mk
include ../../mk/language/c.mk
include ../../mk/robotpkg.mk

do-install:
	cd ${WRKSRC}/include/ANN &&  \
	   ${PAX} -rw -pm . ${PREFIX}/${INSTALLATION_DIRS}
