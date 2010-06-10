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
#                                       Duong Dang on Mon Jun 07 2010
#

DISTNAME=	robot-viewer-${VERSION}
PKGNAME=	robot-viewer-${VERSION}
VERSION=	1.2.1

CATEGORIES=		interfaces
MASTER_SITES=		${MASTER_SITE_OPENROBOTS:=robot-viewer/}
MASTER_REPOSITORY=	${MASTER_REPOSITORY_JRL}/gui/robot-viewer

MAINTAINER=		hpp@laas.fr
COMMENT=		A simple robot viewer/motion player

USE_LANGUAGES=		Python

GNU_CONFIGURE=		no
NO_CONFIGURE= 		yes

include ../../wip/python-simpleparse/depend.mk
include ../../wip/mk/sysdep/pyopengl.mk
include ../../wip/mk/sysdep/python-sphinx.mk
include ../../mk/robotpkg.mk

# Generate empty Makefile with targets RobotPkg expects.
generate-dummmy-makefile:
	echo -e "all install:\n\ttrue" > ${WRKSRC}/Makefile

pre-build: generate-dummmy-makefile
	cd ${WRKSRC} && python setup.py build

install-bin:
	cd ${WRKSRC} && python setup.py install --prefix ${PREFIX}

install-doc:
	cd ${WRKSRC}/docs && make html

pre-install: install-bin install-doc


