# Copyright (c) 2010 LAAS/CNRS
# All rights reserved.
#
# Redistribution  and  use in source   and binary forms,  with or without
# modification, are permitted provided that  the following conditions are
# met:
#
#   1. Redistributions  of  source code must  retain  the above copyright
#      notice and this list of conditions.
#   2. Redistributions in binary form must  reproduce the above copyright
#      notice  and this list of  conditions in the documentation   and/or
#      other materials provided with the distribution.
#
#                                                  Duong Dang June 1 2010
#

DISTNAME=		sot-gui-${VERSION}
PKGNAME=		sot-gui-${VERSION}
VERSION=		0.3

CATEGORIES=		interfaces
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=sot-gui/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_JRL}gui/sot-gui

MAINTAINER=		hpp@laas.fr
COMMENT=
LICENSE=		gnu-lgpl-v3

USE_LANGUAGES+= 	python

GNU_CONFIGURE=		no
NO_CONFIGURE= 		yes


# include ../robot-viewer/depend.mk
include ../stackoftasks/depend.mk

include ../../mk/robotpkg.mk


# Generate empty Makefile with targets RobotPkg expects.
generate-dummmy-makefile:
	echo -e "all install:\n\ttrue" > ${WRKSRC}/Makefile

pre-build: generate-dummmy-makefile
	cd ${WRKSRC} && python setup.py build

install-bin:
	cd ${WRKSRC} && python setup.py install --prefix ${PREFIX}

pre-install: install-bin
